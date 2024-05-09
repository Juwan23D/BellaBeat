# BellaBeat Wearable Insights
I took on the role of a junior data analyst for Bella Beat, and analyzed smart device data to gain insight into how consumers are using their smart devices. The purpose of my analysis was to help guide future marketing strategies for Bella Beat so they can properly promote their devices to their targeted audience. 
Along the way, I performed numerous real-world tasks that involved using the data analysis process to expand my way of perceiving data, and helping Bella Beat gather useful data driven information.

**[BellaBeat Dashboard](https://public.tableau.com/views/BellaBeatDash/Dashboard1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)**

**[BellaBeat Presentation](https://docs.google.com/presentation/d/13i26OjJO6J7vGD5g98reZayhKywqOWQcXI34RcF8T0w/edit?usp=sharing)**

_6 step data analysis process_

**[Ask](https://github.com/Juwan23D/BellaBeat?tab=readme-ov-file#ask)**

**[Prepare](https://github.com/Juwan23D/BellaBeat?tab=readme-ov-file#prepare)**

**[Process](https://github.com/Juwan23D/BellaBeat?tab=readme-ov-file#process)**

**[Analyze](https://github.com/Juwan23D/BellaBeat/blob/main/README.md#analyze)**

**[Share](https://github.com/Juwan23D/BellaBeat#share)**

**[Act](https://github.com/Juwan23D/BellaBeat/tree/main#act)**

# Ask

1. What are some trends in smart device usage?
* Tech devices have ranked as one of the top 5 most-purchased gift categories each of the past two years. 61% of people own a smart device. Smart speakers, smartwatches, wireless headphones, and wireless speakers are among the top consumer electronic devices purchased on a mobile phone.Tech shoppers spend 74% of their time researching online versus 26% offline. 76% of people use some form of AI weekly. [Smart device use statistics - Think with Google](https://www.thinkwithgoogle.com/future-of-marketing/emerging-technology/smart-device-use-statistics/)

* Fitness trackers and Smartwatches are among the most popular wearables amongst people growing from 9% to 33% within the last few years. Quantilope ran a survey of 248 US wearable owners from the ages of 18-69, and 63% of them owned a fitness tracker or smart watch. [Wearable technology trends that will shape healthcare in 2022 insiderintelligence.com
Quantilope](https://www.insiderintelligence.com/insights/top-healthcare-wearable-technology-trends/)

* Women spend more time searching on an app on their smartphone, and even more time on their tablet than men. Millennial womens purchasing power is growing, and they are more likely to spend money on high-cost items that have a good deal, positive customer reviews, and a brand's origin story along with its stance on social issues. [Millennial Women Have Strong Purchasing Power. What Influences It? - Marketing Charts Women Are Above-Average Users of Smartphones and Tablets - Marketing Charts](https://www.marketingcharts.com/demographics-and-audiences/women-demographics-and-audiences-82773) 

2. How could these trends apply to Bellabeat customers?
   * These trends can apply to Bellabeats wearable health tracker Ivy and Leaf. With online purchases surging, electronics are normally a pricey item people are more than willing to buy especially if it improves daily quality of life. Headphones that fit over your ear so it's less likely to fall off when you're working out, or smaller ones so you can hide it behind your hair are ideas that influence people's decisions to buy certain products. With the 2020 pandemic, fitness being promoted on social media, and people becoming more aware of their health in general, smartwatches and fitness trackers have become very popular amongst the general public. They are especially more popular amongst women who are leading the growth of 96%  in wearable sales. [Global wearable sales double YoY, women users lead the way - Futurum Research.](https://futurumresearch.com/pew-the-size-of-the-wearables-market-has-doubled-since-last-year/#:~:text=According%20to%20the%20study%2C%2021,to%20attract%20more%20male%20shoppers.) With millennial women increasing purchasing power, and the growing market of wearables, Bellabeats Ivy has an opportunity of standing out amongst consumers.

3. How could these trends help influence Bellabeat marketing strategy?
   * These trends can help identify Bellabeats' audience of women, and where to promote it. Social networking sites such as Facebook, Instagram, and Pinterest are very popular amongst women and they spend the majority of their time on their electronic devices on these apps. Ivy’s elegant style can be used to its advantage with its abilities to analyze the body's vitals, and is relatable since it can also help track a woman's menstrual cycle. This can also increase Bellabeats brand and make women feel as if they have a company who understands them, by making sure they are in top condition as they live their story.

  Task: Make recommendations to BellaBeats Marketing team to help them see how consumers use wearable technology.

# Prepare

Source: [Bella Dataset](https://www.kaggle.com/datasets/arashnic/fitbit)

* This data set was conducted through a survey of 33 individuals who used the health tracker to measure their vital data.
* Things such as heart rate, sleep monitoring, and physical output were recorded in this exercise.
* Though this data is limited by varying factors such as gender, age, and lifestyle, it still covers a general perspective of what a health tracker gathers from individuals.

  For more information here's the link  for the background of the study along with the licenses. 

  [Furberg, Robert; Brinton, Julia; Keating, Michael ; Ortiz, Alexa](https://zenodo.org/record/53894#.YMoUpnVKiP9)

 # Process
**Google Sheets**
 * Removed 3 duplicates
 * Deleted 'Fat' column because of zero values and whitespace
 * No spelling errors
 * Changed format for date and time to be eligible for SQL

 **SQL**
 * Varied participants by dataset, Daily activity= 33, sleep day=24, weight log=8 user IDS

   _This caught my attention because of how the variance can impact results. Except them not participating made me realize that this is more than just analyzing peoples habits, but also their interest._
 * Measured activity time, and distance

    _These 2 metrics corellated with each other because it tells how much time was put in to the excercise, and how far they went._    
 
 * Joined tables to verify varying participation

   **[SQL Code](https://github.com/Juwan23D/BellaBeat/blob/main/BellaQuery.sql)**

  # Analyze

  ## Summary: 
   Sršen wants to analyze smart device usage data in order to gain insight into how consumers use non-Bellabeat smart devices. We will be applying these insights to the Ivy and Leaf products.

  **Measured Activity Time**
  
  * Participants wearing the tracker mostly were stationary when wearing the FitBit. Sedentary is the least beneficial of the 4 categories to a participants fitness journey and won’t build their actual interest in the tracker.
```
   --Select SUM(SedentaryMinutes) as [SM],
--	   SUM(LightlyActiveMinutes) as [LA],
--	   SUM(FairlyActiveMinutes) as [FA],
--	   SUM(VeryActiveMinutes) as [VA]
--FROM	[BellaBeat daily]
```
![Most](https://github.com/Juwan23D/BellaBeat/blob/main/Screenshot_7-5-2024_122022_public.tableau.com.jpeg)

**Daily Steps Active Participants**

* Even though all 33 participants were tracked, only 4 of them actually tried to engage with the fitbit to get more out of their daily steps. The Fitbit is automatic, but whenever they have it off for a duration of time such as to take a shower and beyond, they have no interest in trying to help the device log the information that it wasn't in position to receive. This means the participants are less likely to explore the fitbits capabilities, and are missing out on other features that could help them on their exercise journey.

```
--Select Count (Distinct id)
--From [SQL Prac].[dbo].[BellaBeat daily]
```
![Most](https://github.com/Juwan23D/BellaBeat/blob/main/Screenshot_7-5-2024_122949_docs.google.com.jpeg)

**Number of Participants who used the weight features**

* When it comes to the weight, only 8 out of the 33 participants actually logged their weight. This can impact results by making the wearers miss their goals such as drinking less water than what their body requires to lose weight. Even certain manual weight loss features such as exercise, calorie intake, and body composition are probably completely unknown to the consumer.

```
--Select COUNT (Distinct id)
--From [BellaBeat data - weightLogInfo]
```
![Most](https://github.com/Juwan23D/BellaBeat/blob/main/Screenshot_7-5-2024_12328_docs.google.com.jpeg)

**Number of Participants Who used the sleep features** 

* This was a more positive outcome because it shows that more than half set their tracker to monitor their sleep. Granted they only needed to sleep with it on, the fact that they did speaks volumes. What about this feature encouraged a 72% usage vs the others that couldn’t even get to 30%? The accessibility of the feature is important, because it may be alot easier to get to and simpler to use. 

```
--Select Count (Distinct id)
--From [BellaBeat data - sleepDay (1)]
```
![Most](https://github.com/Juwan23D/BellaBeat/blob/main/Screenshot_7-5-2024_123333_docs.google.com.jpeg)
# Share

**[BellaBeat Dashboard](https://public.tableau.com/views/BellaBeatDash/Dashboard1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)**

![Most](https://github.com/Juwan23D/BellaBeat/blob/main/Screenshot_7-5-2024_123547_public.tableau.com.jpeg)

**[BellaBeat Presentation](https://docs.google.com/presentation/d/13i26OjJO6J7vGD5g98reZayhKywqOWQcXI34RcF8T0w/edit?usp=sharing)**

![Most](https://github.com/Juwan23D/BellaBeat/blob/main/Screenshot_7-5-2024_123728_docs.google.com.jpeg)

# Act

 * My suggestion would be to make BelaBeats Leaf and Ivy easy and simple to use in order to increase the likelihood of users exploring the features of the wearable more. Most people have a short attention span, so the user turning on a feature easily could encourage them to see other functions before they move on to something else.  


* A marketing campaign to increase brand awareness would also keep BellaBeat in the minds of its targeted audience.  


* We are in an era where mental health is being focused on more than ever before, and an exercise journey can be a daunting one. BellaBeat should become more hands on with engaging with its consumers, such as weekly videos, daily tips, encouraging quotes, and promoting its female exclusive features. With the increase in handheld technology such as phones and tablets, BellaBeat using their app for these purposes can create an opening for engagement with its audience.


* Bella Beats menstrual cycle tracker, diary, and readiness score brings the relatable feel of having a big sister to help guide women through life. The marketing team could lead with these three in forming a connection with women in order to pull them away from the competition.

  [Bellabeat’s Ivy bracelet tries to do it all — but it can only do some | TechCrunch](https://techcrunch.com/2021/11/12/bellabeat-ivy-bracelet-health-tracker-review/)



   




  
