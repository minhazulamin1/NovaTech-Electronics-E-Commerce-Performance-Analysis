<div align="center">
 <img width="1408" height="459" alt="Gemini_Generated_Image_80jg4u80jg4u80jg" src="https://github.com/user-attachments/assets/db4fe124-5569-4a7e-ad64-3877b7428349" />
</div>

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

## Data Structure

The dataset consists of four tables with 108,127 order records:
<img width="1345" alt="ERD" src="https://github.com/user-attachments/assets/c78e659c-4a55-45d8-bc7a-2660b5caa101" />

## Executive Summary

**The Problem**
NovaTech's revenue declined 46% year-over-year in 2022 (€5.0M vs €9.1M), with negative growth in every quarter.

**Why:** The 2020 pandemic spike was concentrated in one product line, MacBook Air expanded from 15.7% to 28.9% of revenue then fully reverted. More fundamentally, the business has an 80.2% single-purchase rate, making it heavily dependent on new customer acquisition with limited organic retention.

**The three biggest opportunities:**

1. Retention programme (~€1.7M)
2. Email AOV improvement (~€900K),
3. and laptop refund reduction (~€330K).

Total addressable opportunity: ~€2.9M, or 58% of the 2022 revenue base.

## Revenue Decomposition

<div align="center">
<img width="800" height="700" alt="image" src="https://github.com/user-attachments/assets/56015737-357b-4435-b946-5f2fb8e12a42" />
</div>

The 2022 decline breaks down into two components: order volume declined 38% and AOV declined 10%. Order volume is the primary driver.

Decomposing by product mix: MacBook Air revenue fell 55% YoY (€1.9M to €0.9M), accounting for roughly 40% of the total revenue decline, equivalent to €1.0M. Samsung Webcam, absent in 2019, entered in 2020 and grew share every year. The correction is primarily a reversion of one-time pandemic demand.

**Decomposing by acquisition source:** Direct traffic (83% of revenue) declined in absolute terms but held share. Email grew from 13.7% to 15.7%, the only channel with positive trajectory. The decline is a demand problem, not a channel-mix problem.

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

## Insights Deep Dive

### Sales Trends and Seasonality

<div align="center">
<img width="1092" height="382" alt="image" src="https://github.com/user-attachments/assets/8045a427-37c3-472b-8eaa-27affff0968d" />
</div>

<table>
  <tr>
    <td valign="top" width="50%">
      <h3>Revenue & Seasonality</h3>
      <ul>
        <li><b>2020 Peak:</b> Revenue hit <b>€10.2M</b>, driven by higher AOV (€300) and increased order volume (~34K).</li>
        <li><b>Growth Drivers:</b> AOV and order count contributed equally to the <b>€6.3M</b> revenue surge.</li>
        <li><b>Monthly Highs:</b> September and December are consistently strongest; Dec 2020 peaked at <b>€1.25M</b>.</li>
        <li><b>Post-Holiday Dips:</b> Jan/Feb show predictable troughs (-12% and -23% YoY), costing ~€200K vs. the prior quarter.</li>
      </ul>
    </td>
    <td valign="top" width="50%">
      <h3>Quarterly Sales Shifts</h3>
      <ul>
        <li><b>Historical Trends:</b> In 2019-2020, Q4 was the powerhouse, delivering <b>30–31%</b> of annual revenue.</li>
        <li><b>2021 Rebalance:</b> Q1 gained weight (27%), creating a more balanced contribution across the year.</li>
        <li><b>2022 Divergence:</b> Q1 led at <b>34%</b>, while Q4 dropped significantly to <b>13%</b>, suggesting demand was pulled forward.</li>
        <li><b>Steady Core:</b> Q2 and Q3 remain consistent (22–28%), providing a reliable baseline for the business.</li>
      </ul>
    </td>
  </tr>
</table>

<div align="center">
  <b>December peaks are fading while strong early-year months now drive performance</b>
</div>

<div align="center">
<img width="700" height="1000" alt="image" src="https://github.com/user-attachments/assets/600cefc6-4d60-4926-89e6-621a986d37a4" />
</div>

<table>
  <tr>
    <td valign="top">
      Monthly revenue shows clear seasonality and a shift toward early-year strength. In 2019–2020, <b>December was the peak (€458K → €1.25M)</b>, with January and February smaller post-holiday months. By 2021, <b>Q1 surged</b>, led by January (€1.03M) and February (€708K), reducing reliance on Q4. In 2022, January remained strong (€705K), but <b>Q4 months fell sharply (€178K–€262K)</b>, reflecting a front-loaded year and weaker holiday sales. Mid-year months are relatively stable, ranging <b>€397K–€509K</b>, providing consistent support.
    </td>
  </tr>
</table>

<div align="center">
Revenue swings are tied to simultaneous shifts in AOV and order volume, with both declining in 2022
</div>

<div align="center">
<img width="600" height="700" alt="image" src="https://github.com/user-attachments/assets/a24cf916-27b1-4ad7-b8db-86ca0b11cd03" />
</div>

<table>
  <tr>
    <td valign="top">
     Average order value (AOV) and order volume show how revenue drivers have shifted over time. In 2019, AOV was €230 with ~17K orders. In 2020, both AOV and volume jumped (€300; ~34K orders), fueling the €6.3M revenue increase. In 2021, order volume remained high (~36K) while AOV dipped to €255, sustaining revenue. By 2022, AOV returned to €230 and orders fell sharply (~22K), leading to lower annual revenue.
    </td>
  </tr>
</table>

### Product Performance

<img width="1073" height="380" alt="image" src="https://github.com/user-attachments/assets/3387e178-f0de-40d1-9d98-e5c748ac25d5" />

<table>
  <tr>
    <td valign="top" width="50%">
      <div align="center">
        <b>Two products drive 63% of revenue, with the top three accounting for 85%, a clear concentration risk</b>
      </div>
      <hr>
      Two products account for 63% of revenue: <b>27in Gaming Monitor (35%, €9.9M)</b> and <b>Apple AirPods (28%, €7.7M)</b>. The top three products generate 85% of all revenue, a significant concentration risk. 
      <br>
    </td>
    <td valign="top" width="50%">
      <div align="center">
        <b>Laptops drive €1.1M in returns; Samsung Webcam grows; Bose SoundSport should be cut</b>
      </div>
      <hr>
      Laptops are the highest-risk category. <b>ThinkPad (12%)</b> and <b>MacBook Air (11%)</b> refund rates translate to <b>€1.1M in refunded revenue</b> (€719K from MacBooks and €376K from ThinkPads). 
      <br>
    </td>
  </tr>
</table>

<img width="1090" height="336" alt="image" src="https://github.com/user-attachments/assets/670da90c-62d4-43de-b8e6-8bda0a21f582" />

<table>
  <tr>
    <td valign="top" width="50%">
      <div align="center">
        <b>MacBook Air’s boom-and-bust explains 40% of the total 2022 revenue decline</b>
      </div>
      <hr>
      MacBook Air has the highest AOV (€1,588) but only 3,964 orders. Its revenue share expanded from 15.7% to 28.9% in 2020, then contracted to 17.2% by 2022. This single product line explains the majority of the revenue correction; the <b>€1.0M MacBook revenue decline represents 40% of the total 2022 drop.</b>
    </td>
    <td valign="top" width="50%">
      <div align="center">
        <b>Samsung Webcam proves "sticky" while Bose SoundSport warrants immediate discontinuation</b>
      </div>
      <hr>
      Samsung Webcam, introduced in 2020, grew share every year, proving "stickier" than the MacBook surge. Conversely, <b>Bose SoundSport Headphones</b> generated just €3,339 total with 27 orders; demand is negligible and <b>warrants discontinuation.</b>
    </td>
  </tr>
</table>

## Marketing Channel Effectiveness
<div align="center">
<img width="1100" height="338" alt="image" src="https://github.com/user-attachments/assets/e0480af3-3792-4d92-b7b7-bbe03a8097b8" />
</div>

<table>
  <tr>
    <td valign="top" width="50%">
      <div align="center">
        <b>Direct traffic remains the core revenue driver but is losing share to emerging channels</b>
      </div>
      <hr>
      Direct traffic dominates at 83% of revenue but its share is declining: 85.5% in 2019 to 76.2% in 2022. In absolute terms, direct revenue still accounts for <b>€3.8M</b>; it held up better than overall revenue. As the direct channel share shrinks, it signaling a positive diversification of the acquisition mix.
      <br><br>
      <b>Affiliate</b> brings the highest-value customers at <b>€303 AOV</b> (67% above email). Despite low volume (2,900 orders total), affiliate demonstrates that high-value customers can be acquired through non-direct channels.
    </td>
    <td valign="top" width="50%">
      <div align="center">
        <b>Email is the primary growth engine—closing the AOV gap represents a €900K+ opportunity</b>
      </div>
      <hr>
      Email is the clearest growth story, nearly doubling from 8.1% to 15.7% of revenue share. Email order volume grew from 1,824 to 4,247 annually. However, email AOV (€181) is significantly below affiliate (€303) and direct (€277). 
      <br><br>
      Closing this gap represents a <b>substantial opportunity</b>: if email's AOV reached direct-channel levels, incremental revenue would be ~€1.8M. Even closing 50% of this gap yields an additional <b>€900K in revenue</b>.
    </td>
  </tr>
</table>

## Platform Analysis

<div align="center">
Website accounts for 96–97% of revenue across all years. Mobile app remains marginal at €868K total over four years.
</div>

<div align="center">
<img width="500" alt="Product preference by platform" src="https://github.com/user-attachments/assets/ef9c1330-9df7-4186-b38b-d573b3aaa648" />
</div>

<div align="center">
Mobile AOV (€47 vs €304) reflects product mix, not user behavior
</div>

<div align="center">
<img width="600" alt="Platform revenue and AOV" src="https://github.com/user-attachments/assets/27df1da1-85c8-4bd2-b665-eee02f04c98c" />
</div>

The mobile app AOV gap (€47 vs €304) is entirely a product mix effect: mobile app users purchased just 129 gaming monitors and 8 MacBooks across the entire period, compared to 23,279 monitors and 3,956 MacBooks on website. Mobile users almost exclusively buy Samsung accessories and AirPods.

<div align="center">
Mobile users mainly buy low-cost accessories, explaining lower refund rates (2% vs 6%).
</div>

<div align="center">
<img width="600" alt="Refund rate by platform" src="https://github.com/user-attachments/assets/e7c08d18-0e93-4f41-b762-ffd24d96abbd" />
</div>

Mobile app refund rate (2%) is lower than website (6%), but this is a confounding variable — low-cost accessories are rarely worth returning. Controlling for product mix would likely eliminate the difference entirely. The platform itself is not driving different customer behaviour.

# Loyalty Programme Impact

The loyalty programme's growth is the strongest positive signal in the data: 10.7% of revenue in 2019 to 54.8% in 2022. This represents a fundamental shift in the customer base composition.
Members spend more per product across the board: 15.2% more on Gaming Monitors (€457 vs €397), 9.3% more on MacBooks (€1,721 vs €1,574), and 5.2% more on ThinkPads (€1,131 vs €1,075). The programme appears to shift purchasing toward higher-spec variants, not just drive volume.

<div align="center">
<img width="600" alt="Loyalty revenue over time" src="https://github.com/user-attachments/assets/71319bb5-7cbc-4bd3-b9df-cb9f140f2937" />
</div>

The 2022 AOV crossover is a key maturation signal. Member AOV (€245) surpassed non-member AOV (€214) for the first time, while non-member AOV collapsed from a €345 peak. Member AOV stayed relatively stable throughout (€207 to €245).

<div align="center">
<img width="600" alt="AOV by loyalty by year" src="https://github.com/user-attachments/assets/808b09a5-bef6-40cc-8d34-d581ed9b7a8b" />
</div>
  
Refund rates for members were consistently higher across 2019–2021 (7.8% vs 5.4% in 2019; 12.9% vs 6.9% in 2020). The 2020 spike to 12.9% suggests the programme attracted deal-seeking customers with higher return propensity during the pandemic rush.

#Regional Performance

<div align="center">
<img width="600" alt="Regional performance" src="https://github.com/user-attachments/assets/deee601a-8dd8-4f44-a04c-b29a32776032" />
</div>

North America is the largest market (€14.6M including reclassified null-region orders), with the US alone accounting for 47% of total sales. EMEA follows at €8.2M, APAC at €3.7M, and LATAM at €1.7M.

<div align="center">
<img width="800" height="700" alt="image" src="https://github.com/user-attachments/assets/808b09a5-bef6-40cc-8d34-d581ed9b7a8b" />
</div>

APAC has the highest AOV at €279, 21% above LATAM's €231. This gap suggests different pricing tolerance or customer demographics by region, though the product mix is consistent across all regions. No region-specific preferences were detected.

<div align="center">
<img width="800" height="700" alt="image" src="https://github.com/user-attachments/assets/deee601a-8dd8-4f44-a04c-b29a32776032" />
</div>

# Customer Analysis

<div align="center">
<img width="800" height="700" alt="image" src="https://github.com/user-attachments/assets/aa304c96-1e70-43f8-9bd5-6fde6232898e" />
</div>

80.2% of NovaTech's customers are single-purchase buyers. Only 17,385 of 87,628 customers (19.8%) ever placed a second order. The average customer generates just €321 in lifetime revenue, with a median of €168 — the typical customer buys a single mid-to-low-ticket item and never returns.

<div align="center">
<img width="800" height="700" alt="image" src="https://github.com/user-attachments/assets/6f162c19-ea09-4abf-a550-4167d9c10744" />
</div>

Returning customers generate €616 in average lifetime value (2.5x the €248 from one-time buyers), across an average of 2.18 orders at €283 per order (14% above first-time buyers). Their refund rate is also lower (4.3% vs 5.3%), confirming they are higher quality across every metric. The smaller sample size (17,385 vs 70,243 customers) warrants noting, though at this volume the findings are robust.

The loyalty programme does not solve retention. Loyalty members have a lower repeat rate (17.4%) than non-members (21.8%). This suggests the programme's current design rewards per-transaction spend rather than purchase frequency. Redesigning incentives around return visits, not just basket value, is the highest-leverage change available.

If NovaTech converted just 5% of one-time buyers to repeat customers at the returning-customer lifetime value of €616, that would generate approximately €1.7M in incremental annual revenue, a 34% lift on 2022's €5.0M base, with minimal acquisition cost since these customers already exist in the database.

Recommendations
PriorityActionOwnerExpected ImpactMetric to TrackP0Build a repeat-purchase programme: post-purchase email sequences, replenishment reminders for accessories, and "next product" recommendations based on first purchaseMarketing / CXConvert 5% of one-time buyers to repeat → ~€1.7M incremental revenueRepeat purchase rate (target: 25%), customer lifetime valueP0Root-cause analysis on laptop refund rates — customer survey, return reason categorisation, and listing accuracy auditProduct / OpsReduce laptop refunds by 30% → ~€330K annual savingsLaptop refund rate (target: below 8%)P1A/B test email campaigns with higher-margin product mix (monitors, laptops vs current accessory-heavy creative)MarketingClose 50% of email-to-direct AOV gap → ~€900K incremental revenueEmail channel AOV (target: €230)P1Redesign loyalty programme tiers around purchase frequency — reward return visits, introduce streak bonuses, shift from spend-threshold to visit-frequency incentivesMarketing / CXImprove member repeat rate from 17.4% to 25%Member repeat purchase rate, member refund rateP2Reduce social media acquisition spend, reallocate budget to email and affiliate scalingMarketingImprove blended customer quality, reduce refund costs on high-ticket itemsBlended refund rate, channel-level ROAS
Total addressable opportunity: ~€2.9M across three growth levers (retention, AOV improvement, cost reduction), representing 58% of the 2022 revenue base.

Tools Used

Microsoft Excel: Pivot tables, conditional formatting, and chart creation for exploratory analysis and visualisation
SQL: Data cleaning, quality checks, and targeted business queries
Analysis techniques: Revenue decomposition (volume × AOV), year-over-year growth analysis, cohort comparison (loyalty vs non-loyalty, new vs returning), product mix shift analysis, cross-dimensional analysis (channel × product, loyalty × product), refund rate benchmarking, customer-level retention analysis
