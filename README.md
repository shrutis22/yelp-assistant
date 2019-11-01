# 🤖 Yelp Assistant
A Salesforce **Einstein Bot** that helps you to find restaurants using _Yelp_ ![image](https://galfar-poc-developer-edition.ap8.force.com/resource/Yelp_Avatar). Visit https://yelp-assistant.web.app/ to see it in action.

## ☁️ Dreamforce 2019
This was presented as a **Theater Session** at Dreamforce 2019 - https://success.salesforce.com/sessions?eventId=a1Q3A000021ea1UUAQ#/session/a2q3A000002BJOwQAO

## 🛠️ How is this built
The bot is built using **Einstein Bots** (_Salesforce_). It uses the **Yelp GraphQL** API to find restaurants given a city, cuisine and price range.

What makes it unique is the usage of base _Lightning Web Component_ namely - [`lightningsnapin-base-chat-message` ](https://developer.salesforce.com/docs/component-library/bundle/lightningsnapin-base-chat-message) to render a [**Image Carousel**](https://github.com/shrutis22/yelp-assistant/tree/master/force-app/main/default/lwc/yelpChatMessage) of the top 5 results.

![image](https://user-images.githubusercontent.com/16715515/68050901-27c27100-fd0c-11e9-906c-6ca8df06aea4.png)

## ✔️Pre-requisites
1.  Sign-up for Yelp and generate an **API Key** (https://www.yelp.com/developers/graphql/guides/intro).
2.  Paste the API Key in the _Custom Metadata_ - `Yelp Configuration.API Key` as shown below:
    ![image](https://user-images.githubusercontent.com/16715515/68052104-f008f880-fd0e-11e9-87b4-dba140a0cd44.png)

> Note: You will need to setup _Force.com Site_, _LiveAgent_ and _Embedded Service Deployments_ manually. 

## 📝 Takeway
This demonstrates the capability of Einstein Bots that let's us to customize the rendered message using LWC.

## 📹 Resources
The _Session Recording_ and the link to the _Blog_ will be published soon.
