---
title: Quantification

description: Development of quantification algorithms to estimate class prevalence
# description: We are designing quantification algorithms to estimate class prevalence

people:
  - fsebastiani
  - amoreo
  - aesuli

layout: project
last-updated: 2025-04-04
---

In a number of applications involving classification, the final goal is not determining which class individual unlabelled instances belong to, but `estimating the prevalence of each class` in the unlabelled data. In recent years it has been pointed out that, in these cases, it would make sense to `directly optimise machine learning algorithms for this goal` rather than just optimising the classifier’s ability to label individual instances. The task of training estimators of class prevalence via supervised learning is known as learning to quantify, or, more simply, quantification. 


<div id="themes" style="font-size: 0.9rem;">
  <h4>Research Topics</h4>
  <ul>
    <li>This</li>
    <li>That</li>
    <li>Classifier Accuracy Prediction</li>
  </ul>
</div>

  
<div id="publications" style="font-size: 0.9rem;">
    <h4>Selected Publications</h4>
    {% include quant.html %}
</div>
