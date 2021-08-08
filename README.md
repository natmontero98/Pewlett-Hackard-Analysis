# Pewlett Hackard Analysis

## Overview of the analysis

The purpose of this analysis is to help future-proof Pewlett-Hackard, a large company that has been around for a long time. Because of this, they're facing the rapid retirement rate of baby boomers. We're helping the company determine who will be retiring, how many people will be retiring and, of those employees, who is eligible for a retirement package. 
It's also important to determine which positions will need to be filled in the near future, so the company can implement a good recruitment plan. 
Now that the company has updated their method to use SQL, we'll help Bobby, the H.R analyst build an employee base that helps answer the previously mentioned questions. 

## Results

Here we present four major points from the two analysis deliverables.
      
- There is a total of 90,398 retiring titles.
- We created a new retirement titles table than includes the percentage of the total for each title. It shows that the majority of retiring titles correspond to    Senior Engineer and Senior Staff titles, with a percentage of 32.5% and 31.2%, respectively.
<img width="347" alt="Captura de Pantalla 2021-08-08 a la(s) 11 35 59" src="https://user-images.githubusercontent.com/85467925/128639309-a894dae7-7d89-4e3a-ae29-2fc488669dec.png">

- About 32% of the employees with retiring titles have had more than one title while working with the company.
- There are 1550 employees eligible for mentorship.

## Summary
The company faces a situation where 90,398 roles will need to be filled as the "silver tsunami" begins to make an impact. As mentioned previously, most of the positions to be filled correspond to Senior Engineer and Senior Staff. But there's also a fair amount of Engineer, Staff, Technique Leaders and Assistant Engineer roles that will need to be filled. On the other hand, we found that only 2 manager positions will need to be filled.

By creating the "mentorship_eligibility" table, we noticed that there are not enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. There's only 1550 employees eligible for mentorship, which accounts for roughly 1.7% of the total roles that will be replaced. This means that each mentor would have to train around 58 people.
In order for the new employees to have a good quality, efficient mentorship, the company should look into finding more eligible mentors, coming maybe from non-retiring employees aswell. 

Thinking about more possible mentors within the company, we created a new table for non retiring employees who have a significant amount of experience, their starting dates raging from 1985 to 1995. This is a large group of employees (158,995), which, along with the retiring employees, would be more than enough to cover the mentorship for the new employees.
<img width="570" alt="Captura de Pantalla 2021-08-08 a la(s) 11 30 33" src="https://user-images.githubusercontent.com/85467925/128639313-dd6df6a0-a885-41ad-8c45-6648e23c2309.png">


Note that more filters should be applied to determine mentorship eligibility, besides years of experience, for example: general performance and behavior records.
