<div align="center">
<img width="553" height="172" alt="Gemini_Generated_Image_umam72umam72umam-removebg-preview" src="https://github.com/user-attachments/assets/28bb1f71-5ddf-4f03-87dc-5e083f9d2b53" />
</div>

# NovaTech Electronics E-Commerce Performance Analysis

## Project Background

NovaTech Electronics is a global e-commerce company, founded in 2018, that sells popular consumer electronics and accessories through its website and mobile app. With a customer base approaching 88,000 across 194 countries and over 108,000 transactions generating €28M in revenue, the company has grown rapidly but faces significant headwinds tied to post-pandemic demand normalisation.

Reporting to the VP of Commercial, this analysis was conducted as a Data Analyst to evaluate NovaTech's performance over the four-year period (2019–2022), identify the root causes of the 2022 revenue decline, and surface actionable opportunities for the Marketing, Product, and Customer Experience teams.
The analysis covers seven areas:

1. Sales Trends and Seasonality: Revenue patterns, growth rates, and seasonal demand cycles
2. Product Performance: Revenue concentration, product mix shifts, and return risk
3. Marketing Channel Effectiveness: Channel contribution, growth trends, and customer quality by acquisition source
4. Loyalty Programme: Adoption trajectory, member economics, and maturation signals
5. Regional Performance: Revenue and AOV across geographies
6. Customer Analysis: Retention, repeat purchase behaviour, and revenue concentration

## Table of Contents

- [Data Structure](#data-structure)
- [Executive Summary](#executive-summary)
- [Sales Trends and Seasonality](#sales-trends-and-seasonality)
- [Product Performance](#product-performance)
- [Marketing Channel Effectiveness](#marketing-channel-effectiveness)
- [Loyalty Programme Impact](#loyalty-programme-impact)
- [Regional Performance](#regional-performance)
- [Customer Analysis](#customer-analysis)
- [Recommendations](#recommendations)

## Data Structure

The dataset consists of four tables with 108,127 order records:
<img width="1095" height="845" alt="orders (3)" src="https://github.com/user-attachments/assets/aa5d7071-9e60-4b94-8337-8ce024f8d0f3" />

## Executive Summary

**The Problem**
NovaTech's revenue declined 46% year-over-year in 2022 (€5.0M vs €9.1M), with negative growth in every quarter.

**Why:** The 2020 pandemic spike was concentrated in one product line, MacBook Air expanded from 15.7% to 28.9% of revenue then fully reverted. More fundamentally, the business has an 80.2% single-purchase rate, making it heavily dependent on new customer acquisition with limited organic retention.

**The three biggest opportunities:**

1. Retention programme (~€1.7M)
2. Email AOV improvement (~€900K),
3. and laptop refund reduction (~€330K).

Total addressable opportunity: ~€2.9M, or 58% of the 2022 revenue base.

**Revenue Decomposition**

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
1. Customer retention is critically weak. €1.7M opportunity. 70,243 of 87,628 customers (80.2%) never place a second order. If just 5% of one-time buyers were converted to repeat purchasers at the returning-customer lifetime value of €616, the incremental revenue would be approximately €1.7M annually, a 34% lift on 2022's base.
2. Laptop return rates are structurally high. €1.1M in refunded revenue. ThinkPad (12%) and MacBook Air (11%) refund rates are 2x the company average (5%). At €1,100–€1,588 AOV, this translates to €1.1M in total refunded laptop revenue, equivalent to 3.9% of total revenue.
3. Social media delivers the worst customer quality. 1,293 orders (1.2% of total), 8% refund rate (50% above average), €231 AOV. The problem amplifies on high-ticket items: social media-acquired customers return ThinkPads at 18.2% and MacBooks at 14.3%, well above already-high company averages.

## Sales Trends and Seasonality

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

## Product Performance

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

## Loyalty Programme Impact

<table>
  <tr>
    <td valign="top" width="50%">
      <div align="center">
        <b> Non member AOV declined in 2022</b>
        <br><br>
       <img width="543" height="348" alt="image" src="https://github.com/user-attachments/assets/7e74dff7-2f18-45f6-8554-886793ecc312" />
      </div>
    </td>
    <td valign="top" width="50%">
      <br><br><br>
      Non-member AOV collapsed 38% from peak (<b>€345 to €214</b>) while member AOV grew steadily by 18% (<b>€207 to €245</b>), crossing over in 2022.
      <br><br>
      Members spent €26 less per order than non-members initially, as the programme attracted budget-conscious buyers. The gap widened to €117 during the pandemic but has now reversed: <b>members now spend €31 more per order</b>, signalling programme maturation.
    </td>
  </tr>

  <tr>
    <td valign="top" width="50%">
      <div align="center">
        <b>Loyalty adoption reached a majority 55% share by 2022</b>
        <br><br>
        <img width="557" height="347" alt="image" src="https://github.com/user-attachments/assets/15574ddc-db54-459a-9d64-ef0809d871ca" />
      </div>
    </td>
    <td valign="top" width="50%">
      <br><br><br>
      Loyalty members grew from <b>11% to 55% of revenue</b> in three years, overtaking non-members in 2021.
      <br><br>
      Rapid adoption during the pandemic doubled membership share to 29%, adding <b>€2.6M</b> in member revenue. By 2021, members contributed 53% of total revenue. Even during the 2022 downturn, <b>members consolidated at 55%</b>, demonstrating the programme's stickiness.
    </td>
  </tr>
</table>

## Regional Performance

<img width="1065" height="341" alt="image" src="https://github.com/user-attachments/assets/3b62583f-e484-4d55-a906-552f7217701e" />

<table>
  <tr>
    <td valign="top" width="50%">
      <div align="center">
        <b>Every region's AOV peaked in 2020 and declined after, but LATAM collapsed fastest, dropping 43% from peak (€295 to €168)</b>
      </div>
      <hr>
      <ul>
        <li><b>APAC:</b> Most resilient trajectory. Peaked at €317 and settled to €249, only a 21% decline from peak.</li>
        <li><b>LATAM:</b> Significant red flag. AOV fell from €295 to €168, a 43% drop and the lowest AOV of any region.</li>
        <li><b>North America:</b> The anchor. Stable at €237 in 2022, closest to its 2019 baseline of €238.</li>
        <li><b>EMEA:</b> Mirrors the overall company trend. Peaked, corrected, and landed roughly where it started.</li>
      </ul>
    </td>
    <td valign="top" width="50%">
      <div align="center">
        <b>North America's share is growing, reaching 55% in 2022. The business is becoming more dependent on a single market.</b>
      </div>
      <hr>
      <ul>
        <li><b>North America:</b> Regained dominance at 54.6% after dipping in 2021. Demand proved more resilient post-pandemic.</li>
        <li><b>EMEA:</b> Lost 3pp of share (30.7% to 27.7%) from 2021 to 2022, the largest decline of any region.</li>
        <li><b>LATAM:</b> Shrank to just 5.2% of revenue. Underperforming on both volume and AOV dimensions.</li>
        <li><b>APAC:</b> Stayed flat at 12-14%. Consistent but not growing, representing untapped high-AOV potential.</li>
      </ul>
    </td>
  </tr>
</table>

## Customer Analysis

<div align="center">
<img width="800" height="700" alt="image" src="https://github.com/user-attachments/assets/deda2c33-3018-46e9-ab1d-d5ab3e1e757c" />
</div>

<table>
  <tr>
    <td valign="top" width="50%">
      <div align="center">
        <b>80% of customers are single-purchase buyers: the typical customer buys one item and never returns</b>
      </div>
      <hr>
      80.2% of NovaTech's customers are single-purchase buyers. Only <b>17,385 of 87,628 customers (19.8%)</b> ever placed a second order. The average customer generates just <b>€321 in lifetime revenue</b> (median €168).
      <br><br>
      While returning customers generate a higher AOV (<b>€283 vs. €248</b>), the loyalty programme is failing to drive retention. Members actually have a <b>lower repeat rate (17.4%)</b> than non-members (21.8%), suggesting the programme rewards per-transaction spend rather than frequency.
    </td>
    <td valign="top" width="50%">
      <div align="center">
        <b>Converting just 5% of one-time buyers represents a €1.7M revenue lift with zero acquisition cost</b>
      </div>
      <hr>
      Redesigning incentives around return visits, rather than just basket value, is the highest-leverage change available. 
      <br><br>
      If NovaTech converted just <b>5% of one-time buyers</b> to repeat customers at the returning-customer lifetime value of €616, it would generate approximately <b>€1.7M in incremental annual revenue</b>. 
      <br><br>
      This represents a <b>34% lift</b> on the 2022 revenue base, achieved with minimal cost since these customers already exist in the database.
    </td>
  </tr>
</table>

## Recommendations

<table>
  <thead>
    <tr>
      <th>Priority</th>
      <th>Action</th>
      <th>Owner</th>
      <th>Expected Impact</th>
      <th>Metric to Track</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>P0</b></td>
      <td><b>Build a repeat-purchase programme:</b> Post-purchase email sequences, replenishment reminders, and "next product" recommendations.</td>
      <td>Marketing / CX</td>
      <td>Convert 5% of one-time buyers to repeat → <b>~€1.7M incremental revenue</b></td>
      <td>Repeat purchase rate (Target: 25%), CLV</td>
    </tr>
    <tr>
      <td><b>P0</b></td>
      <td><b>Root-cause analysis on laptop refunds:</b> Customer surveys, return reason categorisation, and listing accuracy audit.</td>
      <td>Product / Ops</td>
      <td>Reduce laptop refunds by 30% → <b>~€330K annual savings</b></td>
      <td>Laptop refund rate (Target: < 8%)</td>
    </tr>
    <tr>
      <td><b>P1</b></td>
      <td><b>A/B test email campaigns:</b> Focus on higher-margin product mix (monitors, laptops) vs. current accessory-heavy creative.</td>
      <td>Marketing</td>
      <td>Close 50% of email-to-direct AOV gap → <b>~€900K incremental revenue</b></td>
      <td>Email channel AOV (Target: €230)</td>
    </tr>
    <tr>
      <td><b>P1</b></td>
      <td><b>Redesign loyalty programme tiers:</b> Reward return visits, introduce streak bonuses, and visit-frequency incentives.</td>
      <td>Marketing / CX</td>
      <td>Improve member repeat rate from 17.4% to 25%</td>
      <td>Member repeat rate, Member refund rate</td>
    </tr>
    <tr>
      <td><b>P2</b></td>
      <td><b>Reallocate social media spend:</b> Shift budget to email and affiliate scaling to improve blended customer quality.</td>
      <td>Marketing</td>
      <td>Reduce refund costs on high-ticket items</td>
      <td>Blended refund rate, Channel-level ROAS</td>
    </tr>
  </tbody>
</table>

<blockquote>
  <b>Total Addressable Opportunity: ~€2.9M</b> across three growth levers (retention, AOV improvement, and cost reduction), representing <b>58% of the 2022 revenue base.</b>
</blockquote>
