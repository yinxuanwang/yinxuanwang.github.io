---
title: "Research"
permalink: /research/
author_profile: false
classes: no-sidebar
---

## Working Papers

<div class="research-list">

{% include paper.html
  title="Rhetorical Structure Embeddings: Measuring Rhetorical Organization in Political Texts"
  status="Under review"
  abstract="Rhetorical organization is politically consequential but difficult to measure at scale. I introduce rhetorical structure embeddings (RSEs), a representation of paragraph-level rhetorical organization derived from adjacent layer transformations in BERT. Combined with an unsupervised dimensionality-reduction and clustering pipeline, the approach discovers recurring organizational patterns in political text. In both a three-source register-recovery task and a content-controlled variant, the RSE outperforms conventional readability, complexity, and grammatical benchmarks, as well as the pooled final-layer output of the BERT model. I then apply the method to U.S. Democratic and Republican national party platforms from 1980 to 2024, identifying six recurrent patterns of rhetorical organization and partisan differences in their use. Democrats rely more heavily on a Problem-Solution style, while Republicans more often use a Purpose-Driven style. The method provides a scalable way to discover and analyze rhetorical organization without predefined categories or collapsing rhetorical form into a single dimension such as complexity."
%}

{% include paper.html
  title="MuLTI: A Framework for Inferring Latent Ties from Noisy Observational Indicators"
  coauthors="Bokai Qi"
  abstract="Political scientists often rely on proxy networks to study relational political processes, yet theoretically important relationships such as patronage, trust, and antagonism are often latent and multiplex. Existing approaches risk conflating the target latent relationship with its proxies and introducing non-classical measurement errors. We propose MuLTI (Multi-indicator Latent Tie Inference), a framework that recovers latent ties from rich but noisy observational data by combining relational traces, dyadic characteristics, and features of the documentation process. We establish nonparametric identification using conditionally independent, tie-specific anchors, and estimate the model by maximum likelihood with stratified stochastic optimization. Simulations show that MuLTI consistently outperforms proxy-based benchmarks, with the largest gains when indicators are noisy and multiple indicators are available. We apply the framework to biographical records of 1,500 revolutionary elites from the Chinese Communist Revolution, estimating positive and negative tie probabilities from twelve extracted observational traces. The application shows that MuLTI recovers nuanced, multidimensional relationships that conventional binary codings would miss."
%}


</div>

## Work in Progress

<div class="research-list">

{% include paper.html
  title="The Wartime Ties that Bind: Explaining Ex-Militants' Access to Political Office with Rebel Networks Estimated from Biographical Texts"
  coauthors="Bokai Qi"
%}

{% include paper.html
  title="Mechanism-Separating Design for Text-Based Survey Experiments"
%}

{% include paper.html
  title="Lonely Resistance: Differential Responses to Assimilationist Language Policy across Ethnic Minority Subgroups"
%}

{% include paper.html
  title="Becoming the Mouthpiece: Capture, Transform, and Propagandize Intellectuals"
  coauthors="Bokai Qi and Xingchen Lan"
%}

</div>
