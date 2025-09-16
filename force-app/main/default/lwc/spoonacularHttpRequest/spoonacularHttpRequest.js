import { LightningElement } from 'lwc';
import apiKey from "@salesforce/label/c.apiKeySpoonacular";
import {reduceErrors} from 'c/ldsUtils';

export default class SpoonacularHttpRequest extends LightningElement {

    defaultNumber = 2;
    foodVal;
    foodData = [];
    foodInfoFull = [];
    selectedFoodName;
    isLoading = false;
    isShowModal = false;

    handleFoodType(event) {
        console.log(event.target.value);
        this.foodVal = event.target.value;
    }


    handleResponseSizeChange(event) {
        const eventResponseSize = event.target.value;
        if(eventResponseSize > 0) {
            this.responseSize = eventResponseSize;
        } else {
            this.responseSize = 2;
        }
    }

    spoonacularFetch() {
        this.isLoading = true;
        console.log('apiKey: ', apiKey);
        const calloutURI = 'https://api.spoonacular.com/recipes/complexSearch?query=' + this.foodVal + '&maxFat=25&number=' + this.defaultNumber + '&apiKey=' + apiKey;


        fetch(calloutURI, { method: "GET" })
            .then(response => {
                return response.json();
            })
            .then(result => {
                this.foodData = result["results"];
                console.log('Response Body (foodData):', this.foodData);
                this.isLoading = false;
            })
            .catch(error => {
                console.error('Spoonacular API call failed:', error);
                this.isLoading = false;
            });
    }

    showFoodData(event) {
        this.selectedFoodName = event.target.dataset.name;
        this.isLoading = true;
        this.foodInfoFull = [];
        console.log(event.target.dataset.value);
        const foodId = event.target.dataset.value;
        const calloutURI = 'https://api.spoonacular.com/recipes/' + foodId + '/information?apiKey=' + apiKey;
        fetch(calloutURI, {
            method: "GET"
        }).then((response) => response.json())
            .then(result => {
                this.isShowModal = true;
                this.foodInfoFull = [...this.foodInfoFull, result];
                console.log(this.foodData);
                this.isLoading = false;
            });
        console.log(this.foodInfoFull);
        
    }

    get errors() 
        {
            return (this.foodData.error) ? reduceErrors(this.foodData.error) : [];
        }

    hideModalBox() {
        this.isShowModal = false;
    }
}