import 'dart:ui';

String buildCss({required Color brandColor}) {
  final hexString = "#${brandColor.red.toRadixString(16).padLeft(2, '0')}"
      "${brandColor.green.toRadixString(16).padLeft(2, '0')}"
      "${brandColor.blue.toRadixString(16).padLeft(2, '0')}";
  return _cssTemplate.replaceAll("{{BRAND_COLOR}}", hexString);
}

const _cssTemplate ="""
#login-card {
  border-radius: 8px;
}

#login-card-content {
  padding: 16px 16px 1px 16px;
}

#login-title {
  text-align: center;
  margin-bottom: 2rem;
}

#login-btn-row {
  margin-bottom: 0;
}

#qr-label {
  font-size: 20px;
  color: {{BRAND_COLOR}};
}

.form-row {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 1rem !important;
}

.form-row-item {
  margin-left: 0 !important;
}

svg {
  height: 160px;
  width: 160px;
}

.material-icons {
  color: {{BRAND_COLOR}};
}

.vertical-divider-container {
  display: flex;
}

.vertical-divider {
  border-left: 1px solid #CCCCCC;
  height: 72px;
  width: 1px;
  margin-left: auto;
  margin-right: auto;
}

.vertical-divider-text {
  margin-top: 4px !important;
  margin-bottom: 4px !important;
}

.input-row {
  margin-bottom: 0 !important;
}

.input-field {
  margin-bottom: .5rem !important;
  margin-top: 0 !important;
}

.btn {
  width: 100%;
  background-color: {{BRAND_COLOR}} !important;
}

.prefix {
  right: 0;
}

.input-outlined > input {
  border: 1px solid #000 !important;
  padding: 0px 16px 0px !important;
  width: calc(100% - 2.5rem) !important;
  float: none !important;
  display: block !important;
  border-radius: 4px !important;
  transition: box-shadow, border-color 0.15s !important;
  color: {{BRAND_COLOR}} !important;
}

.input-outlined > input:focus:not([readonly]) {
  border-color: {{BRAND_COLOR}} !important;
  box-shadow: 0 1px 0 0px {{BRAND_COLOR}} !important;
}

.input-outlined > label {
  left: 27px !important;
  display: inline-flex !important;
  width: auto !important;
}

.input-field .prefix.active {
  color: {{BRAND_COLOR}} !important;
}

.input-outlined > label.active {
  background: white !important;
  border-left: 4px solid white !important;
  border-right: 4px solid white !important;
  transform: translateY(-1.75rem) !important;
  top: 1rem !important;
  color: {{BRAND_COLOR}} !important;
}

html {
  line-height: 1.15;
  /* 1 */
  -ms-text-size-adjust: 100%;
  /* 2 */
  -webkit-text-size-adjust: 100%;
  /* 2 */
}

/* Sections
   ========================================================================== */
/**
 * Remove the margin in all browsers (opinionated).
 */
.col .row {
  margin-left: -0.75rem;
  margin-right: -0.75rem;
}

.row {
  margin-left: auto;
  margin-right: auto;
  margin-bottom: 20px;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

.row .col {
  float: left;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  padding: 0 0.75rem;
  min-height: 1px;
}

.row .col[class*="push-"], .row .col[class*="pull-"] {
  position: relative;
}

.row .col.s1 {
  width: 8.3333333333%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s2 {
  width: 16.6666666667%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s3 {
  width: 25%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s4 {
  width: 33.3333333333%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s5 {
  width: 41.6666666667%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s6 {
  width: 50%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s7 {
  width: 58.3333333333%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s8 {
  width: 66.6666666667%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s9 {
  width: 75%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s10 {
  width: 83.3333333333%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s11 {
  width: 91.6666666667%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.s12 {
  width: 100%;
  margin-left: auto;
  left: auto;
  right: auto;
}

.row .col.offset-s1 {
  margin-left: 8.3333333333%;
}

.row .col.pull-s1 {
  right: 8.3333333333%;
}

.row .col.push-s1 {
  left: 8.3333333333%;
}

.row .col.offset-s2 {
  margin-left: 16.6666666667%;
}

.row .col.pull-s2 {
  right: 16.6666666667%;
}

.row .col.push-s2 {
  left: 16.6666666667%;
}

.row .col.offset-s3 {
  margin-left: 25%;
}

.row .col.pull-s3 {
  right: 25%;
}

.row .col.push-s3 {
  left: 25%;
}

.row .col.offset-s4 {
  margin-left: 33.3333333333%;
}

.row .col.pull-s4 {
  right: 33.3333333333%;
}

.row .col.push-s4 {
  left: 33.3333333333%;
}

.row .col.offset-s5 {
  margin-left: 41.6666666667%;
}

.row .col.pull-s5 {
  right: 41.6666666667%;
}

.row .col.push-s5 {
  left: 41.6666666667%;
}

.row .col.offset-s6 {
  margin-left: 50%;
}

.row .col.pull-s6 {
  right: 50%;
}

.row .col.push-s6 {
  left: 50%;
}

.row .col.offset-s7 {
  margin-left: 58.3333333333%;
}

.row .col.pull-s7 {
  right: 58.3333333333%;
}

.row .col.push-s7 {
  left: 58.3333333333%;
}

.row .col.offset-s8 {
  margin-left: 66.6666666667%;
}

.row .col.pull-s8 {
  right: 66.6666666667%;
}

.row .col.push-s8 {
  left: 66.6666666667%;
}

.row .col.offset-s9 {
  margin-left: 75%;
}

.row .col.pull-s9 {
  right: 75%;
}

.row .col.push-s9 {
  left: 75%;
}

.row .col.offset-s10 {
  margin-left: 83.3333333333%;
}

.row .col.pull-s10 {
  right: 83.3333333333%;
}

.row .col.push-s10 {
  left: 83.3333333333%;
}

.row .col.offset-s11 {
  margin-left: 91.6666666667%;
}

.row .col.pull-s11 {
  right: 91.6666666667%;
}

.row .col.push-s11 {
  left: 91.6666666667%;
}

.row .col.offset-s12 {
  margin-left: 100%;
}

.row .col.pull-s12 {
  right: 100%;
}

.row .col.push-s12 {
  left: 100%;
}

@media only screen and (min-width: 601px) {
  .row .col.m1 {
    width: 8.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m2 {
    width: 16.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m3 {
    width: 25%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m4 {
    width: 33.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m5 {
    width: 41.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m6 {
    width: 50%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m7 {
    width: 58.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m8 {
    width: 66.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m9 {
    width: 75%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m10 {
    width: 83.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m11 {
    width: 91.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.m12 {
    width: 100%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.offset-m1 {
    margin-left: 8.3333333333%;
  }
  .row .col.pull-m1 {
    right: 8.3333333333%;
  }
  .row .col.push-m1 {
    left: 8.3333333333%;
  }
  .row .col.offset-m2 {
    margin-left: 16.6666666667%;
  }
  .row .col.pull-m2 {
    right: 16.6666666667%;
  }
  .row .col.push-m2 {
    left: 16.6666666667%;
  }
  .row .col.offset-m3 {
    margin-left: 25%;
  }
  .row .col.pull-m3 {
    right: 25%;
  }
  .row .col.push-m3 {
    left: 25%;
  }
  .row .col.offset-m4 {
    margin-left: 33.3333333333%;
  }
  .row .col.pull-m4 {
    right: 33.3333333333%;
  }
  .row .col.push-m4 {
    left: 33.3333333333%;
  }
  .row .col.offset-m5 {
    margin-left: 41.6666666667%;
  }
  .row .col.pull-m5 {
    right: 41.6666666667%;
  }
  .row .col.push-m5 {
    left: 41.6666666667%;
  }
  .row .col.offset-m6 {
    margin-left: 50%;
  }
  .row .col.pull-m6 {
    right: 50%;
  }
  .row .col.push-m6 {
    left: 50%;
  }
  .row .col.offset-m7 {
    margin-left: 58.3333333333%;
  }
  .row .col.pull-m7 {
    right: 58.3333333333%;
  }
  .row .col.push-m7 {
    left: 58.3333333333%;
  }
  .row .col.offset-m8 {
    margin-left: 66.6666666667%;
  }
  .row .col.pull-m8 {
    right: 66.6666666667%;
  }
  .row .col.push-m8 {
    left: 66.6666666667%;
  }
  .row .col.offset-m9 {
    margin-left: 75%;
  }
  .row .col.pull-m9 {
    right: 75%;
  }
  .row .col.push-m9 {
    left: 75%;
  }
  .row .col.offset-m10 {
    margin-left: 83.3333333333%;
  }
  .row .col.pull-m10 {
    right: 83.3333333333%;
  }
  .row .col.push-m10 {
    left: 83.3333333333%;
  }
  .row .col.offset-m11 {
    margin-left: 91.6666666667%;
  }
  .row .col.pull-m11 {
    right: 91.6666666667%;
  }
  .row .col.push-m11 {
    left: 91.6666666667%;
  }
  .row .col.offset-m12 {
    margin-left: 100%;
  }
  .row .col.pull-m12 {
    right: 100%;
  }
  .row .col.push-m12 {
    left: 100%;
  }
}

@media only screen and (min-width: 993px) {
  .row .col.l1 {
    width: 8.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l2 {
    width: 16.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l3 {
    width: 25%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l4 {
    width: 33.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l5 {
    width: 41.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l6 {
    width: 50%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l7 {
    width: 58.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l8 {
    width: 66.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l9 {
    width: 75%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l10 {
    width: 83.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l11 {
    width: 91.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.l12 {
    width: 100%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.offset-l1 {
    margin-left: 8.3333333333%;
  }
  .row .col.pull-l1 {
    right: 8.3333333333%;
  }
  .row .col.push-l1 {
    left: 8.3333333333%;
  }
  .row .col.offset-l2 {
    margin-left: 16.6666666667%;
  }
  .row .col.pull-l2 {
    right: 16.6666666667%;
  }
  .row .col.push-l2 {
    left: 16.6666666667%;
  }
  .row .col.offset-l3 {
    margin-left: 25%;
  }
  .row .col.pull-l3 {
    right: 25%;
  }
  .row .col.push-l3 {
    left: 25%;
  }
  .row .col.offset-l4 {
    margin-left: 33.3333333333%;
  }
  .row .col.pull-l4 {
    right: 33.3333333333%;
  }
  .row .col.push-l4 {
    left: 33.3333333333%;
  }
  .row .col.offset-l5 {
    margin-left: 41.6666666667%;
  }
  .row .col.pull-l5 {
    right: 41.6666666667%;
  }
  .row .col.push-l5 {
    left: 41.6666666667%;
  }
  .row .col.offset-l6 {
    margin-left: 50%;
  }
  .row .col.pull-l6 {
    right: 50%;
  }
  .row .col.push-l6 {
    left: 50%;
  }
  .row .col.offset-l7 {
    margin-left: 58.3333333333%;
  }
  .row .col.pull-l7 {
    right: 58.3333333333%;
  }
  .row .col.push-l7 {
    left: 58.3333333333%;
  }
  .row .col.offset-l8 {
    margin-left: 66.6666666667%;
  }
  .row .col.pull-l8 {
    right: 66.6666666667%;
  }
  .row .col.push-l8 {
    left: 66.6666666667%;
  }
  .row .col.offset-l9 {
    margin-left: 75%;
  }
  .row .col.pull-l9 {
    right: 75%;
  }
  .row .col.push-l9 {
    left: 75%;
  }
  .row .col.offset-l10 {
    margin-left: 83.3333333333%;
  }
  .row .col.pull-l10 {
    right: 83.3333333333%;
  }
  .row .col.push-l10 {
    left: 83.3333333333%;
  }
  .row .col.offset-l11 {
    margin-left: 91.6666666667%;
  }
  .row .col.pull-l11 {
    right: 91.6666666667%;
  }
  .row .col.push-l11 {
    left: 91.6666666667%;
  }
  .row .col.offset-l12 {
    margin-left: 100%;
  }
  .row .col.pull-l12 {
    right: 100%;
  }
  .row .col.push-l12 {
    left: 100%;
  }
}

@media only screen and (min-width: 1201px) {
  .row .col.xl1 {
    width: 8.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl2 {
    width: 16.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl3 {
    width: 25%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl4 {
    width: 33.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl5 {
    width: 41.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl6 {
    width: 50%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl7 {
    width: 58.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl8 {
    width: 66.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl9 {
    width: 75%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl10 {
    width: 83.3333333333%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl11 {
    width: 91.6666666667%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.xl12 {
    width: 100%;
    margin-left: auto;
    left: auto;
    right: auto;
  }
  .row .col.offset-xl1 {
    margin-left: 8.3333333333%;
  }
  .row .col.pull-xl1 {
    right: 8.3333333333%;
  }
  .row .col.push-xl1 {
    left: 8.3333333333%;
  }
  .row .col.offset-xl2 {
    margin-left: 16.6666666667%;
  }
  .row .col.pull-xl2 {
    right: 16.6666666667%;
  }
  .row .col.push-xl2 {
    left: 16.6666666667%;
  }
  .row .col.offset-xl3 {
    margin-left: 25%;
  }
  .row .col.pull-xl3 {
    right: 25%;
  }
  .row .col.push-xl3 {
    left: 25%;
  }
  .row .col.offset-xl4 {
    margin-left: 33.3333333333%;
  }
  .row .col.pull-xl4 {
    right: 33.3333333333%;
  }
  .row .col.push-xl4 {
    left: 33.3333333333%;
  }
  .row .col.offset-xl5 {
    margin-left: 41.6666666667%;
  }
  .row .col.pull-xl5 {
    right: 41.6666666667%;
  }
  .row .col.push-xl5 {
    left: 41.6666666667%;
  }
  .row .col.offset-xl6 {
    margin-left: 50%;
  }
  .row .col.pull-xl6 {
    right: 50%;
  }
  .row .col.push-xl6 {
    left: 50%;
  }
  .row .col.offset-xl7 {
    margin-left: 58.3333333333%;
  }
  .row .col.pull-xl7 {
    right: 58.3333333333%;
  }
  .row .col.push-xl7 {
    left: 58.3333333333%;
  }
  .row .col.offset-xl8 {
    margin-left: 66.6666666667%;
  }
  .row .col.pull-xl8 {
    right: 66.6666666667%;
  }
  .row .col.push-xl8 {
    left: 66.6666666667%;
  }
  .row .col.offset-xl9 {
    margin-left: 75%;
  }
  .row .col.pull-xl9 {
    right: 75%;
  }
  .row .col.push-xl9 {
    left: 75%;
  }
  .row .col.offset-xl10 {
    margin-left: 83.3333333333%;
  }
  .row .col.pull-xl10 {
    right: 83.3333333333%;
  }
  .row .col.push-xl10 {
    left: 83.3333333333%;
  }
  .row .col.offset-xl11 {
    margin-left: 91.6666666667%;
  }
  .row .col.pull-xl11 {
    right: 91.6666666667%;
  }
  .row .col.push-xl11 {
    left: 91.6666666667%;
  }
  .row .col.offset-xl12 {
    margin-left: 100%;
  }
  .row .col.pull-xl12 {
    right: 100%;
  }
  .row .col.push-xl12 {
    left: 100%;
  }
}

.card-panel {
  -webkit-transition: -webkit-box-shadow .25s;
  transition: -webkit-box-shadow .25s;
  transition: box-shadow .25s;
  transition: box-shadow .25s, -webkit-box-shadow .25s;
  padding: 24px;
  margin: 0.5rem 0 1rem 0;
  border-radius: 2px;
  background-color: #fff;
}

.card {
  position: relative;
  margin: 0.5rem 0 1rem 0;
  background-color: #fff;
  -webkit-transition: -webkit-box-shadow .25s;
  transition: -webkit-box-shadow .25s;
  transition: box-shadow .25s;
  transition: box-shadow .25s, -webkit-box-shadow .25s;
  border-radius: 2px;
}

.card .card-title {
  font-size: 24px;
  font-weight: 300;
}

.card .card-title.activator {
  cursor: pointer;
}

.card.small, .card.medium, .card.large {
  position: relative;
}

.card.small .card-image, .card.medium .card-image, .card.large .card-image {
  max-height: 60%;
  overflow: hidden;
}

.card.small .card-image + .card-content, .card.medium .card-image + .card-content, .card.large .card-image + .card-content {
  max-height: 40%;
}

.card.small .card-content, .card.medium .card-content, .card.large .card-content {
  max-height: 100%;
  overflow: hidden;
}

.card.small .card-action, .card.medium .card-action, .card.large .card-action {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
}

.card.small {
  height: 300px;
}

.card.medium {
  height: 400px;
}

.card.large {
  height: 500px;
}

.card.horizontal {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
}

.card.horizontal.small .card-image, .card.horizontal.medium .card-image, .card.horizontal.large .card-image {
  height: 100%;
  max-height: none;
  overflow: visible;
}

.card.horizontal.small .card-image img, .card.horizontal.medium .card-image img, .card.horizontal.large .card-image img {
  height: 100%;
}

.card.horizontal .card-image {
  max-width: 50%;
}

.card.horizontal .card-image img {
  border-radius: 2px 0 0 2px;
  max-width: 100%;
  width: auto;
}

.card.horizontal .card-stacked {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  position: relative;
}

.card.horizontal .card-stacked .card-content {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
  -ms-flex-positive: 1;
  flex-grow: 1;
}

.card.sticky-action .card-action {
  z-index: 2;
}

.card.sticky-action .card-reveal {
  z-index: 1;
  padding-bottom: 64px;
}

.card .card-image {
  position: relative;
}

.card .card-image img {
  display: block;
  border-radius: 2px 2px 0 0;
  position: relative;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  width: 100%;
}

.card .card-image .card-title {
  color: #fff;
  position: absolute;
  bottom: 0;
  left: 0;
  max-width: 100%;
  padding: 24px;
}

.card .card-content {
  padding: 24px;
  border-radius: 0 0 2px 2px;
}

.card .card-content p {
  margin: 0;
}

.card .card-content .card-title {
  display: block;
  line-height: 32px;
  margin-bottom: 8px;
}

.card .card-content .card-title i {
  line-height: 32px;
}

.card .card-action {
  background-color: inherit;
  border-top: 1px solid rgba(160, 160, 160, 0.2);
  position: relative;
  padding: 16px 24px;
}

.card .card-action:last-child {
  border-radius: 0 0 2px 2px;
}

.card .card-action a:not(.btn):not(.btn-large):not(.btn-small):not(.btn-large):not(.btn-floating) {
  color: #ffab40;
  margin-right: 24px;
  -webkit-transition: color .3s ease;
  transition: color .3s ease;
  text-transform: uppercase;
}

.card .card-action a:not(.btn):not(.btn-large):not(.btn-small):not(.btn-large):not(.btn-floating):hover {
  color: #ffd8a6;
}

.card .card-reveal {
  padding: 24px;
  position: absolute;
  background-color: #fff;
  width: 100%;
  overflow-y: auto;
  left: 0;
  top: 100%;
  height: 100%;
  z-index: 3;
  display: none;
}

.input-field {
  margin-bottom: .5rem !important;
  margin-top: 0 !important;
}

.input-row {
  margin-bottom: 0 !important;
}

.card .card-reveal .card-title {
  cursor: pointer;
  display: block;
}

/* 2dp elevation modified*/
.z-depth-1, nav, .card-panel, .card, .toast, .btn, .btn-large, .btn-small, .btn-floating, .dropdown-content, .collapsible, .sidenav {
  -webkit-box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.12), 0 1px 5px 0 rgba(0, 0, 0, 0.2);
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.12), 0 1px 5px 0 rgba(0, 0, 0, 0.2);
}

.center, .center-align {
  text-align: center;
}
.input-field {
  position: relative;
  margin-top: 1rem;
  margin-bottom: 1rem;
}

.input-field.inline {
  display: inline-block;
  vertical-align: middle;
  margin-left: 5px;
}

.input-field.inline input,
.input-field.inline .select-dropdown {
  margin-bottom: 1rem;
}

.input-field.col label {
  left: 0.75rem;
}

.input-field.col .prefix ~ label,
.input-field.col .prefix ~ .validate ~ label {
  width: calc(100% - 3rem - 1.5rem);
}

.input-field > label {
  color: #9e9e9e;
  position: absolute;
  top: 0;
  left: 0;
  font-size: 1rem;
  cursor: text;
  -webkit-transition: color .2s ease-out, -webkit-transform .2s ease-out;
  transition: color .2s ease-out, -webkit-transform .2s ease-out;
  transition: transform .2s ease-out, color .2s ease-out;
  transition: transform .2s ease-out, color .2s ease-out, -webkit-transform .2s ease-out;
  -webkit-transform-origin: 0% 100%;
  transform-origin: 0% 100%;
  text-align: initial;
  -webkit-transform: translateY(12px);
  transform: translateY(12px);
}

.input-field > label:not(.label-icon).active {
  -webkit-transform: translateY(-14px) scale(0.8);
  transform: translateY(-14px) scale(0.8);
  -webkit-transform-origin: 0 0;
  transform-origin: 0 0;
}

.input-field > input[type]:-webkit-autofill:not(.browser-default):not([type="search"]) + label,
.input-field > input[type=date]:not(.browser-default) + label,
.input-field > input[type=time]:not(.browser-default) + label {
  -webkit-transform: translateY(-14px) scale(0.8);
  transform: translateY(-14px) scale(0.8);
  -webkit-transform-origin: 0 0;
  transform-origin: 0 0;
}

.input-field .helper-text {
  position: relative;
  min-height: 18px;
  display: block;
  font-size: 12px;
  color: rgba(0, 0, 0, 0.54);
}

.input-field .helper-text::after {
  opacity: 1;
  position: absolute;
  top: 0;
  left: 0;
}

.input-field .prefix {
  position: absolute;
  width: 3rem;
  font-size: 2rem;
  -webkit-transition: color .2s;
  transition: color .2s;
  top: 0.5rem;
}

.input-field .prefix.active {
  color: #26a69a;
}

.input-field .prefix ~ input,
.input-field .prefix ~ textarea,
.input-field .prefix ~ label,
.input-field .prefix ~ .validate ~ label,
.input-field .prefix ~ .helper-text,
.input-field .prefix ~ .autocomplete-content {
  margin-left: 3rem;
  width: 92%;
  width: calc(100% - 3rem);
}

.input-field .prefix ~ label {
  margin-left: 3rem;
}

@media only screen and (max-width: 992px) {
  .input-field .prefix ~ input {
    width: 86%;
    width: calc(100% - 3rem);
  }
}

@media only screen and (max-width: 600px) {
  .input-field .prefix ~ input {
    width: 80%;
    width: calc(100% - 3rem);
  }
}

/* Search Field */
.input-field input[type=search] {
  display: block;
  line-height: inherit;
  -webkit-transition: .3s background-color;
  transition: .3s background-color;
}

.nav-wrapper .input-field input[type=search] {
  height: inherit;
  padding-left: 4rem;
  width: calc(100% - 4rem);
  border: 0;
  -webkit-box-shadow: none;
  box-shadow: none;
}

.input-field input[type=search]:focus:not(.browser-default) {
  background-color: #fff;
  border: 0;
  -webkit-box-shadow: none;
  box-shadow: none;
  color: #444;
}

.input-field input[type=search]:focus:not(.browser-default) + label i,
.input-field input[type=search]:focus:not(.browser-default) ~ .mdi-navigation-close,
.input-field input[type=search]:focus:not(.browser-default) ~ .material-icons {
  color: #444;
}

.input-field input[type=search] + .label-icon {
  -webkit-transform: none;
  transform: none;
  left: 1rem;
}

.input-field input[type=search] ~ .mdi-navigation-close,
.input-field input[type=search] ~ .material-icons {
  position: absolute;
  top: 0;
  right: 1rem;
  color: transparent;
  cursor: pointer;
  font-size: 2rem;
  -webkit-transition: .3s color;
  transition: .3s color;
}
.btn, .btn-large, .btn-small,
.btn-flat {
  border: none;
  border-radius: 2px;
  display: inline-block;
  height: 36px;
  line-height: 36px;
  padding: 0 16px;
  text-transform: uppercase;
  vertical-align: middle;
  -webkit-tap-highlight-color: transparent;
}

.btn.disabled, .disabled.btn-large, .disabled.btn-small,
.btn-floating.disabled,
.btn-large.disabled,
.btn-small.disabled,
.btn-flat.disabled,
.btn:disabled,
.btn-large:disabled,
.btn-small:disabled,
.btn-floating:disabled,
.btn-large:disabled,
.btn-small:disabled,
.btn-flat:disabled,
.btn[disabled],
.btn-large[disabled],
.btn-small[disabled],
.btn-floating[disabled],
.btn-large[disabled],
.btn-small[disabled],
.btn-flat[disabled] {
  pointer-events: none;
  background-color: #DFDFDF !important;
  -webkit-box-shadow: none;
  box-shadow: none;
  color: #9F9F9F !important;
  cursor: default;
}

.btn, .btn-large, .btn-small,
.btn-floating,
.btn-large,
.btn-small,
.btn-flat {
  font-size: 14px;
  outline: 0;
}

.btn i, .btn-large i, .btn-small i,
.btn-floating i,
.btn-large i,
.btn-small i,
.btn-flat i {
  font-size: 1.3rem;
  line-height: inherit;
}

.btn:focus, .btn-large:focus, .btn-small:focus,
.btn-floating:focus {
  background-color: #1d7d74;
}

.btn, .btn-large, .btn-small {
  text-decoration: none;
  color: #fff;
  background-color: #26a69a;
  text-align: center;
  letter-spacing: .5px;
  -webkit-transition: background-color .2s ease-out;
  transition: background-color .2s ease-out;
  cursor: pointer;
}

.btn:hover, .btn-large:hover, .btn-small:hover {
  background-color: #2bbbad;
}

.waves-effect.waves-light .waves-ripple {
  background-color: rgba(255, 255, 255, 0.45);
}
/*
 * Waves v0.6.0
 * http://fian.my.id/Waves
 *
 * Copyright 2014 Alfiana E. Sibuea and other contributors
 * Released under the MIT license
 * https://github.com/fians/Waves/blob/master/LICENSE
 */
.waves-effect {
  position: relative;
  cursor: pointer;
  display: inline-block;
  overflow: hidden;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  -webkit-tap-highlight-color: transparent;
  vertical-align: middle;
  z-index: 1;
  -webkit-transition: .3s ease-out;
  transition: .3s ease-out;
}

.waves-effect .waves-ripple {
  position: absolute;
  border-radius: 50%;
  width: 20px;
  height: 20px;
  margin-top: -10px;
  margin-left: -10px;
  opacity: 0;
  background: rgba(0, 0, 0, 0.2);
  -webkit-transition: all 0.7s ease-out;
  transition: all 0.7s ease-out;
  -webkit-transition-property: opacity, -webkit-transform;
  transition-property: opacity, -webkit-transform;
  transition-property: transform, opacity;
  transition-property: transform, opacity, -webkit-transform;
  -webkit-transform: scale(0);
  transform: scale(0);
  pointer-events: none;
}

.waves-effect.waves-red .waves-ripple {
  background-color: rgba(244, 67, 54, 0.7);
}

.waves-effect.waves-yellow .waves-ripple {
  background-color: rgba(255, 235, 59, 0.7);
}

.waves-effect.waves-orange .waves-ripple {
  background-color: rgba(255, 152, 0, 0.7);
}

.waves-effect.waves-purple .waves-ripple {
  background-color: rgba(156, 39, 176, 0.7);
}

.waves-effect.waves-green .waves-ripple {
  background-color: rgba(76, 175, 80, 0.7);
}

.waves-effect.waves-teal .waves-ripple {
  background-color: rgba(0, 150, 136, 0.7);
}

.waves-effect input[type="button"], .waves-effect input[type="reset"], .waves-effect input[type="submit"] {
  border: 0;
  font-style: normal;
  font-size: inherit;
  text-transform: inherit;
  background: none;
}

.waves-effect img {
  position: relative;
  z-index: -1;
}

/* Firefox Bug: link not triggered */
.waves-effect .waves-ripple {
  z-index: -1;
}

.modal .modal-footer .btn, .modal .modal-footer .btn-large, .modal .modal-footer .btn-small, .modal .modal-footer .btn-flat {
  margin: 6px 0;
}

.z-depth-1-half, .btn:hover, .btn-large:hover, .btn-small:hover, .btn-floating:hover {
  -webkit-box-shadow: 0 3px 3px 0 rgba(0, 0, 0, 0.14), 0 1px 7px 0 rgba(0, 0, 0, 0.12), 0 3px 1px -1px rgba(0, 0, 0, 0.2);
  box-shadow: 0 3px 3px 0 rgba(0, 0, 0, 0.14), 0 1px 7px 0 rgba(0, 0, 0, 0.12), 0 3px 1px -1px rgba(0, 0, 0, 0.2);
}

.datepicker-controls .select-wrapper input {
  border-bottom: none;
  text-align: center;
  margin: 0;
}

.datepicker-controls .select-wrapper input:focus {
  border-bottom: none;
}

.datepicker-controls .select-wrapper .caret {
  display: none;
}

.datepicker-controls .select-year input {
  width: 50px;
}

.datepicker-controls .select-month input {
  width: 70px;
}
/* Text inputs */
input:not([type]),
input[type=text]:not(.browser-default),
input[type=password]:not(.browser-default),
input[type=email]:not(.browser-default),
textarea.materialize-textarea {
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #9e9e9e;
  border-radius: 0;
  outline: none;
  height: 3rem;
  width: 100%;
  font-size: 16px;
  margin: 0 0 8px 0;
  padding: 0;
  -webkit-box-shadow: none;
  box-shadow: none;
  -webkit-box-sizing: content-box;
  box-sizing: content-box;
  -webkit-transition: border .3s, -webkit-box-shadow .3s;
  transition: border .3s, -webkit-box-shadow .3s;
  transition: box-shadow .3s, border .3s;
  transition: box-shadow .3s, border .3s, -webkit-box-shadow .3s;
}

input:not([type]):disabled, input:not([type])[readonly="readonly"],
input[type=text]:not(.browser-default):disabled,
input[type=text]:not(.browser-default)[readonly="readonly"],
input[type=password]:not(.browser-default):disabled,
input[type=password]:not(.browser-default)[readonly="readonly"],
input[type=email]:not(.browser-default):disabled,
input[type=email]:not(.browser-default)[readonly="readonly"],
textarea.materialize-textarea:disabled,
textarea.materialize-textarea[readonly="readonly"] {
  color: rgba(0, 0, 0, 0.42);
  border-bottom: 1px dotted rgba(0, 0, 0, 0.42);
}

input:not([type]):disabled + label,
input:not([type])[readonly="readonly"] + label,
input[type=text]:not(.browser-default):disabled + label,
input[type=text]:not(.browser-default)[readonly="readonly"] + label,
input[type=password]:not(.browser-default):disabled + label,
input[type=password]:not(.browser-default)[readonly="readonly"] + label,
input[type=email]:not(.browser-default):disabled + label,
input[type=email]:not(.browser-default)[readonly="readonly"] + label,
textarea.materialize-textarea:disabled + label,
textarea.materialize-textarea[readonly="readonly"] + label {
  color: rgba(0, 0, 0, 0.42);
}

input:not([type]):focus:not([readonly]),
input[type=text]:not(.browser-default):focus:not([readonly]),
input[type=password]:not(.browser-default):focus:not([readonly]),
input[type=email]:not(.browser-default):focus:not([readonly]),
textarea.materialize-textarea:focus:not([readonly]) {
  border-bottom: 1px solid #26a69a;
  -webkit-box-shadow: 0 1px 0 0 #26a69a;
  box-shadow: 0 1px 0 0 #26a69a;
}

input:not([type]):focus:not([readonly]) + label,
input[type=text]:not(.browser-default):focus:not([readonly]) + label,
input[type=password]:not(.browser-default):focus:not([readonly]) + label,
input[type=email]:not(.browser-default):focus:not([readonly]) + label,
textarea.materialize-textarea:focus:not([readonly]) + label {
  color: #26a69a;
}

input:not([type]):focus.valid ~ label,
input[type=text]:not(.browser-default):focus.valid ~ label,
input[type=password]:not(.browser-default):focus.valid ~ label,
input[type=email]:not(.browser-default):focus.valid ~ label,
textarea.materialize-textarea:focus.valid ~ label {
  color: #4CAF50;
}

input:not([type]):focus.invalid ~ label,
input[type=text]:not(.browser-default):focus.invalid ~ label,
input[type=password]:not(.browser-default):focus.invalid ~ label,
input[type=email]:not(.browser-default):focus.invalid ~ label,
textarea.materialize-textarea:focus.invalid ~ label {
  color: #F44336;
}

input:not([type]).validate + label,
input[type=text]:not(.browser-default).validate + label,
input[type=password]:not(.browser-default).validate + label,
input[type=email]:not(.browser-default).validate + label,
textarea.materialize-textarea.validate + label {
  width: 100%;
}

/* Validation Sass Placeholders */
input.valid:not([type]), input.valid:not([type]):focus,
input.valid[type=text]:not(.browser-default),
input.valid[type=text]:not(.browser-default):focus,
input.valid[type=password]:not(.browser-default),
input.valid[type=password]:not(.browser-default):focus,
input.valid[type=email]:not(.browser-default),
input.valid[type=email]:not(.browser-default):focus,
textarea.materialize-textarea.valid,
textarea.materialize-textarea.valid:focus, .select-wrapper.valid > input.select-dropdown {
  border-bottom: 1px solid #4CAF50;
  -webkit-box-shadow: 0 1px 0 0 #4CAF50;
  box-shadow: 0 1px 0 0 #4CAF50;
}

input.invalid:not([type]), input.invalid:not([type]):focus,
input.invalid[type=text]:not(.browser-default),
input.invalid[type=text]:not(.browser-default):focus,
input.invalid[type=password]:not(.browser-default),
input.invalid[type=password]:not(.browser-default):focus,
input.invalid[type=email]:not(.browser-default),
input.invalid[type=email]:not(.browser-default):focus,
textarea.materialize-textarea.invalid,
textarea.materialize-textarea.invalid:focus, .select-wrapper.invalid > input.select-dropdown,
.select-wrapper.invalid > input.select-dropdown:focus {
  border-bottom: 1px solid #F44336;
  -webkit-box-shadow: 0 1px 0 0 #F44336;
  box-shadow: 0 1px 0 0 #F44336;
}

input:not([type]).valid ~ .helper-text[data-success],
input:not([type]):focus.valid ~ .helper-text[data-success],
input:not([type]).invalid ~ .helper-text[data-error],
input:not([type]):focus.invalid ~ .helper-text[data-error],
input[type=text]:not(.browser-default).valid ~ .helper-text[data-success],
input[type=text]:not(.browser-default):focus.valid ~ .helper-text[data-success],
input[type=text]:not(.browser-default).invalid ~ .helper-text[data-error],
input[type=text]:not(.browser-default):focus.invalid ~ .helper-text[data-error],
input[type=password]:not(.browser-default).valid ~ .helper-text[data-success],
input[type=password]:not(.browser-default):focus.valid ~ .helper-text[data-success],
input[type=password]:not(.browser-default).invalid ~ .helper-text[data-error],
input[type=password]:not(.browser-default):focus.invalid ~ .helper-text[data-error],
input[type=email]:not(.browser-default).valid ~ .helper-text[data-success],
input[type=email]:not(.browser-default):focus.valid ~ .helper-text[data-success],
input[type=email]:not(.browser-default).invalid ~ .helper-text[data-error],
input[type=email]:not(.browser-default):focus.invalid ~ .helper-text[data-error],
textarea.materialize-textarea.valid ~ .helper-text[data-success],
textarea.materialize-textarea:focus.valid ~ .helper-text[data-success],
textarea.materialize-textarea.invalid ~ .helper-text[data-error],
textarea.materialize-textarea:focus.invalid ~ .helper-text[data-error], .select-wrapper.valid .helper-text[data-success],
.select-wrapper.invalid ~ .helper-text[data-error] {
  color: transparent;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  pointer-events: none;
}

input:not([type]).valid ~ .helper-text:after,
input:not([type]):focus.valid ~ .helper-text:after,
input[type=text]:not(.browser-default).valid ~ .helper-text:after,
input[type=text]:not(.browser-default):focus.valid ~ .helper-text:after,
input[type=password]:not(.browser-default).valid ~ .helper-text:after,
input[type=password]:not(.browser-default):focus.valid ~ .helper-text:after,
input[type=email]:not(.browser-default).valid ~ .helper-text:after,
input[type=email]:not(.browser-default):focus.valid ~ .helper-text:after,
textarea.materialize-textarea.valid ~ .helper-text:after,
textarea.materialize-textarea:focus.valid ~ .helper-text:after, .select-wrapper.valid ~ .helper-text:after {
  content: attr(data-success);
  color: #4CAF50;
}

input:not([type]).invalid ~ .helper-text:after,
input:not([type]):focus.invalid ~ .helper-text:after,
input[type=text]:not(.browser-default).invalid ~ .helper-text:after,
input[type=text]:not(.browser-default):focus.invalid ~ .helper-text:after,
input[type=password]:not(.browser-default).invalid ~ .helper-text:after,
input[type=password]:not(.browser-default):focus.invalid ~ .helper-text:after,
input[type=email]:not(.browser-default).invalid ~ .helper-text:after,
input[type=email]:not(.browser-default):focus.invalid ~ .helper-text:after,
textarea.materialize-textarea.invalid ~ .helper-text:after,
textarea.materialize-textarea:focus.invalid ~ .helper-text:after, .select-wrapper.invalid ~ .helper-text:after {
  content: attr(data-error);
  color: #F44336;
}

input:not([type]) + label:after,
input[type=text]:not(.browser-default) + label:after,
input[type=password]:not(.browser-default) + label:after,
input[type=email]:not(.browser-default) + label:after,
textarea.materialize-textarea + label:after, .select-wrapper + label:after {
  display: block;
  content: "";
  position: absolute;
  top: 100%;
  left: 0;
  opacity: 0;
  -webkit-transition: .2s opacity ease-out, .2s color ease-out;
  transition: .2s opacity ease-out, .2s color ease-out;
}

*, *:before, *:after {
  -webkit-box-sizing: inherit;
  box-sizing: inherit;
}
@media only screen and (min-width: 0) {
  html {
    font-size: 14px;
  }
}

@media only screen and (min-width: 992px) {
  html {
    font-size: 14.5px;
  }
}

@media only screen and (min-width: 1200px) {
  html {
    font-size: 15px;
  }
}
html {
  line-height: 1.5;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
  font-weight: normal;
  color: rgba(0, 0, 0, 0.87);
}
*, *:before, *:after {
  -webkit-box-sizing: inherit;
  box-sizing: inherit;
}
html {
  line-height: 1.15;
  /* 1 */
  -ms-text-size-adjust: 100%;
  /* 2 */
  -webkit-text-size-adjust: 100%;
  /* 2 */
}
""";