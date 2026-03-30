# NovaTech-Electronics-E-Commerce-Performance-Analysis

## Project Background

NovaTech Electronics is a global e-commerce company, founded in 2018, that sells popular consumer electronics and accessories through its website and mobile app. With a customer base approaching 88,000 across 194 countries and over 108,000 transactions generating €28M in revenue, the company has grown rapidly but faces significant headwinds tied to post-pandemic demand normalisation.

Reporting to the VP of Commercial, this analysis was conducted as a Data Analyst to evaluate NovaTech's performance over the four-year period (2019–2022), identify the root causes of the 2022 revenue decline, and surface actionable opportunities for the Marketing, Product, and Customer Experience teams.
The analysis covers seven areas:

1. Sales Trends and Seasonality: Revenue patterns, growth rates, and seasonal demand cycles
2. Product Performance: Revenue concentration, product mix shifts, and return risk
3. Marketing Channel Effectiveness: Channel contribution, growth trends, and customer quality by acquisition source
4. Platform Analysis: Website vs. mobile app purchasing behaviour
5. Loyalty Programme: Adoption trajectory, member economics, and maturation signals
6. Regional Performance: Revenue and AOV across geographies
7. Customer Analysis: Retention, repeat purchase behaviour, and revenue concentration

The Excel workbooks used for analysis can be found in the analysis folder. The SQL queries used for data cleaning and targeted business questions can be found in the sql folder.

## Data Structure
The dataset consists of two tables with 108,127 order records:
[ERD diagram]

##Executive Summary

**The Problem**
NovaTech's revenue declined 46% year-over-year in 2022 (€5.0M vs €9.1M), with negative growth in every quarter.

**Why:** The 2020 pandemic spike was concentrated in one product line — MacBook Air expanded from 15.7% to 28.9% of revenue then fully reverted. More fundamentally, the business has an 80.2% single-purchase rate, making it heavily dependent on new customer acquisition with limited organic retention.

**The three biggest opportunities:**

1. Retention programme (~€1.7M)
2. Email AOV improvement (~€900K),
3. and laptop refund reduction (~€330K).

Total addressable opportunity: ~€2.9M, or 58% of the 2022 revenue base.

##Revenue Decomposition

The 2022 decline breaks down into two components: order volume declined 38% and AOV declined 10%. Order volume is the primary driver.

Decomposing by product mix: MacBook Air revenue fell 55% YoY (€1.9M to €0.9M), accounting for roughly 40% of the total revenue decline, equivalent to €1.0M. Samsung Webcam, absent in 2019, entered in 2020 and grew share every year. The correction is primarily a reversion of one-time pandemic demand.

**Decomposing by acquisition source:** Direct traffic (83% of revenue) declined in absolute terms but held share. Email grew from 13.7% to 15.7% — the only channel with positive trajectory. The decline is a demand problem, not a channel-mix problem.

**Decomposing by customer behaviour:** 80.2% of customers are single-purchase buyers generating €248 in lifetime value. The 19.8% who return generate €616 in lifetime value (2.5x more) with a lower refund rate. The business is an acquisition machine with a weak retention engine.

**Overview of Key Findings**

**Three things going well:**
1. Loyalty programme adoption is accelerating. Members reached 54.8% of revenue in 2022, up from 10.7% in 2019, overtaking non-members in 2021. Member AOV (€245) overtook non-member AOV (€214) for the first time in 2022. Members also spend 15% more on Gaming Monitors (€457 vs €397) and 9% more on MacBooks (€1,721 vs €1,574), indicating the programme shifts purchasing behaviour toward higher-spec variants, not just volume.
2. Email is the only growing acquisition channel. Email nearly doubled its revenue share from 8.1% to 15.7%. Refund rates for email customers (4.8%) are in line with direct and affiliate, confirming comparable customer quality despite lower AOV.
3. Returning customers are categorically higher value. The 19.8% who repeat generate €616 in lifetime value (2.5x above one-time buyers at €248), with a per-order AOV of €283 (vs €248) and a lower refund rate (4.3% vs 5.3%). The top 10% of customers generate 45.4% of total revenue.

**Three things requiring action:**
1. Customer retention is critically weak — €1.7M opportunity. 70,243 of 87,628 customers (80.2%) never place a second order. If just 5% of one-time buyers were converted to repeat purchasers at the returning-customer lifetime value of €616, the incremental revenue would be approximately €1.7M annually, a 34% lift on 2022's base.
2. Laptop return rates are structurally high — €1.1M in refunded revenue. ThinkPad (12%) and MacBook Air (11%) refund rates are 2x the company average (5%). At €1,100–€1,588 AOV, this translates to €1.1M in total refunded laptop revenue, equivalent to 3.9% of total revenue.
3. Social media delivers the worst customer quality. 1,293 orders (1.2% of total), 8% refund rate (50% above average), €231 AOV. The problem amplifies on high-ticket items: social media-acquired customers return ThinkPads at 18.2% and MacBooks at 14.3%, well above already-high company averages.

##Insights Deep Dive

**Sales Trends and Seasonality**
<img width="597" height="342" alt="image" src="https://github.com/user-attachments/assets/e2cdb334-207a-424b-8770-4218d7fa1740" />

<img width="613" height="401" alt="image" src="https://github.com/user-attachments/assets/f4db4f74-eab7-4ce1-b675-fbba3eee2c68" />

<img width="750" height="328" alt="image" src="https://github.com/user-attachments/assets/086e54d2-839f-46e7-a8be-58411706f41b" />

Revenue peaked at €10.2M in 2020, driven by both higher AOV (€300 vs €230 in 2019) and more orders (~34K vs ~17K). Both factors contributed roughly equally to the €6.3M revenue increase.
September and December are consistently the strongest months. December 2020 was the single highest month at €1.25M. January and February consistently show post-holiday dips (average YoY growth of -12% and -23%), representing a predictable seasonal trough worth approximately €200K in lost monthly revenue versus the prior quarter.

[Seasonality heatmap]

The YoY growth pattern reveals asymmetry: Q2 2020 surged +212%, but the payback in Q2 2021 was only -19%. The real collapse came in 2022 as post-pandemic baselines settled. Q4 2022 was the worst at -72%, with October dropping to just €178K — a company lifetime low.

<img width="990" height="630" alt="image" src="https://github.com/user-attachments/assets/a24cf916-27b1-4ad7-b8db-86ca0b11cd03" />

## Product Performance

<img width="805" height="367" alt="image" src="https://github.com/user-attachments/assets/0d4cba49-b62d-48f4-a707-d9bab2ef68b6" />

Two products account for 63% of revenue: 27in Gaming Monitor (35%, €9.9M) and Apple AirPods (28%, €7.7M). The top three products generate 85% of all revenue — a significant concentration risk.

MacBook Air has the highest AOV (€1,588) but only 3,964 orders. Its revenue share expanded from 15.7% to 28.9% in 2020, then contracted to 17.2% by 2022. This single product line explains the majority of the revenue correction — the €1.0M MacBook revenue decline represents 40% of the total 2022 drop.

<img width="875" height="276" alt="image" src="https://github.com/user-attachments/assets/1fb29008-e7df-4a8a-a12a-d4f71e1075aa" />

Laptops are the highest-risk return category. ThinkPad (12%) and MacBook Air (11%) refund rates translate to €1.1M in refunded revenue, €719K from MacBooks alone and €376K from ThinkPads. Samsung Charging Cable Pack has the lowest refund rate at 1%, consistent with low-cost items not being worth the effort of returning.

<img width="583" height="341" alt="image" src="https://github.com/user-attachments/assets/a7742dc6-3010-4e22-a7f7-69c931e4ad07" />

Samsung Webcam entered the product line in 2020 and grew share every subsequent year — a pandemic-era product that proved sticky, unlike the MacBook surge. Bose SoundSport Headphones generated just €3,339 total with 27 orders — despite being ~€40 cheaper than AirPods, demand is negligible and warrants discontinuation.

<img width="847" height="372" alt="image" src="https://github.com/user-attachments/assets/5e9a7737-ca61-420b-aaab-554fa2b543f7" />

##Marketing Channel Effectiveness

<img width="988" height="467" alt="image" src="https://github.com/user-attachments/assets/4ff35f77-7f9c-4f41-99dd-2ecfa6815967" />

Direct traffic dominates at 83% of revenue but its share is declining: 85.5% in 2019 to 76.2% in 2022. In absolute terms, direct revenue still accounts for €3.8M, it held up better than overall revenue.

Email is the clearest growth story, nearly doubling from 8.1% to 15.7% of revenue share. Email order volume grew from 1,824 to 4,247 annually. However, email AOV (€181) is significantly below affiliate (€303) and direct (€277). Closing this gap represents a substantial opportunity: if email's AOV reached direct-channel levels, the incremental revenue from existing email volume (18,553 orders) would be approximately €1.8M. Even closing 50% of the gap yields ~€900K.

<img width="630" height="341" alt="image" src="https://github.com/user-attachments/assets/45b5f2eb-d187-460b-b8ea-979724ceba02" />

Affiliate brings the highest-value customers at €303 AOV — 67% above email. Despite low volume (2,900 orders total), affiliate demonstrates that high-value customers can be acquired through non-direct channels.

Social media is the weakest channel on every quality metric: 8% refund rate, 1.2% of orders, and €231 AOV. The problem compounds on high-ticket items — social media-acquired customers return ThinkPads at 18.2% and MacBooks at 14.3%, well above company averages of 12% and 11%. Refund rates across direct, affiliate, and email are nearly identical (4.8%–5.0%), isolating social media as the clear outlier.

<img width="596" height="325" alt="image" src="https://github.com/user-attachments/assets/638ecbd3-5040-4a42-b395-541f05fe0dbc" />

The "unknown" channel grew from 0.1% to 4.6% of revenue in 2022 — a data classification issue worth investigating to ensure attribution accuracy.

## Platform Analysis

<img width="440" height="338" alt="image" src="https://github.com/user-attachments/assets/7624cba2-35d4-4643-993d-4c425854dacb" />

Website accounts for 96–97% of revenue across all years. Mobile app remains marginal at €868K total over four years.
The mobile app AOV gap (€47 vs €304) is entirely a product mix effect: mobile app users purchased just 129 gaming monitors and 8 MacBooks across the entire period, compared to 23,279 monitors and 3,956 MacBooks on website. Mobile users almost exclusively buy Samsung accessories and AirPods.

<img width="1188" height="333" alt="image" src="https://github.com/user-attachments/assets/27df1da1-85c8-4bd2-b665-eee02f04c98c" />

Mobile app refund rate (2%) is lower than website (6%), but this is a confounding variable — low-cost accessories are rarely worth returning. Controlling for product mix would likely eliminate the difference entirely. The platform itself is not driving different customer behaviour.

<img width="317" height="307" alt="image" src="https://github.com/user-attachments/assets/ef9c1330-9df7-4186-b38b-d573b3aaa648" />

#Loyalty Programme Impact

[Programme health summary table]
The loyalty programme's growth is the strongest positive signal in the data: 10.7% of revenue in 2019 to 54.8% in 2022. This represents a fundamental shift in the customer base composition.
Members spend more per product across the board: 15.2% more on Gaming Monitors (€457 vs €397), 9.3% more on MacBooks (€1,721 vs €1,574), and 5.2% more on ThinkPads (€1,131 vs €1,075). The programme appears to shift purchasing toward higher-spec variants, not just drive volume.

[Loyalty vs non-loyalty revenue over time grouped bar]
The 2022 AOV crossover is a key maturation signal. Member AOV (€245) surpassed non-member AOV (€214) for the first time, while non-member AOV collapsed from a €345 peak. Member AOV stayed relatively stable throughout (€207 to €245).

[AOV by loyalty by year grouped bar]
However, the programme has a critical retention blind spot: loyalty members have a lower repeat purchase rate (17.4%) than non-members (21.8%). The programme scaled per-order spend but did not improve customer retention. Current incentives reward transaction value but not return frequency — this is the single most important finding for the programme's redesign.

Refund rates for members were consistently higher across 2019–2021 (7.8% vs 5.4% in 2019; 12.9% vs 6.9% in 2020). The 2020 spike to 12.9% suggests the programme attracted deal-seeking customers with higher return propensity during the pandemic rush.

#Regional Performance

[Revenue by region bar chart]
North America is the largest market (€14.6M including reclassified null-region orders), with the US alone accounting for 47% of total sales. EMEA follows at €8.2M, APAC at €3.7M, and LATAM at €1.7M.
[AOV by region bar chart]
APAC has the highest AOV at €279, 21% above LATAM's €231. This gap suggests different pricing tolerance or customer demographics by region, though the product mix is consistent across all regions — no region-specific preferences were detected.
[Product performance by region stacked horizontal bar]
Customer Analysis
[Orders per customer distribution chart]
80.2% of NovaTech's customers are single-purchase buyers. Only 17,385 of 87,628 customers (19.8%) ever placed a second order. The average customer generates just €321 in lifetime revenue, with a median of €168 — the typical customer buys a single mid-to-low-ticket item and never returns.
Returning customers are a fundamentally different cohort:
MetricFirst-timeReturningCustomers70,24317,385Total orders70,24337,884Orders per customer1.002.18Total revenue€17,395,996€10,717,183Lifetime value / customer€248€616AOV (revenue / orders)€248€283Total refunds3,7361,643Refund rate5.3%4.3%
Returning customers generate €616 in average lifetime value (2.5x the €248 from one-time buyers), across an average of 2.18 orders at €283 per order (14% above first-time buyers). Their refund rate is also lower (4.3% vs 5.3%), confirming they are higher quality across every metric. The smaller sample size (17,385 vs 70,243 customers) warrants noting, though at this volume the findings are robust.
The loyalty programme does not solve retention. Loyalty members have a lower repeat rate (17.4%) than non-members (21.8%). This suggests the programme's current design rewards per-transaction spend rather than purchase frequency. Redesigning incentives around return visits — not just basket value — is the highest-leverage change available.
If NovaTech converted just 5% of one-time buyers to repeat customers at the returning-customer lifetime value of €616, that would generate approximately €1.7M in incremental annual revenue — a 34% lift on 2022's €5.0M base, with minimal acquisition cost since these customers already exist in the database.

Recommendations
PriorityActionOwnerExpected ImpactMetric to TrackP0Build a repeat-purchase programme: post-purchase email sequences, replenishment reminders for accessories, and "next product" recommendations based on first purchaseMarketing / CXConvert 5% of one-time buyers to repeat → ~€1.7M incremental revenueRepeat purchase rate (target: 25%), customer lifetime valueP0Root-cause analysis on laptop refund rates — customer survey, return reason categorisation, and listing accuracy auditProduct / OpsReduce laptop refunds by 30% → ~€330K annual savingsLaptop refund rate (target: below 8%)P1A/B test email campaigns with higher-margin product mix (monitors, laptops vs current accessory-heavy creative)MarketingClose 50% of email-to-direct AOV gap → ~€900K incremental revenueEmail channel AOV (target: €230)P1Redesign loyalty programme tiers around purchase frequency — reward return visits, introduce streak bonuses, shift from spend-threshold to visit-frequency incentivesMarketing / CXImprove member repeat rate from 17.4% to 25%Member repeat purchase rate, member refund rateP2Reduce social media acquisition spend, reallocate budget to email and affiliate scalingMarketingImprove blended customer quality, reduce refund costs on high-ticket itemsBlended refund rate, channel-level ROAS
Total addressable opportunity: ~€2.9M across three growth levers (retention, AOV improvement, cost reduction), representing 58% of the 2022 revenue base.

Tools Used

Microsoft Excel: Pivot tables, conditional formatting, and chart creation for exploratory analysis and visualisation
SQL: Data cleaning, quality checks, and targeted business queries
Analysis techniques: Revenue decomposition (volume × AOV), year-over-year growth analysis, cohort comparison (loyalty vs non-loyalty, new vs returning), product mix shift analysis, cross-dimensional analysis (channel × product, loyalty × product), refund rate benchmarking, customer-level retention analysis
