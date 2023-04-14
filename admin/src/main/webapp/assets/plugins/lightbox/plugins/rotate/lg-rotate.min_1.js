/**
 * lightgallery | 2.7.1 | January 11th 2023
 * http://www.lightgalleryjs.com/
 * Copyright (c) 2020 Sachin Neravath;
 * @license GPLv3
 */

!function(t,e){"object"==typeof exports&&"undefined"!=typeof module?module.exports=e():"function"==typeof define&&define.amd?define(e):(t="undefined"!=typeof globalThis?globalThis:t||self).lgRotate=e()}(this,(function(){"use strict";var t=function(){return(t=Object.assign||function(t){for(var e,i=1,o=arguments.length;i<o;i++)for(var r in e=arguments[i])Object.prototype.hasOwnProperty.call(e,r)&&(t[r]=e[r]);return t}).apply(this,arguments)},e="lgSlideItemLoad",i="lgBeforeSlide",o="lgRotateLeft",r="lgRotateRight",s="lgFlipHorizontal",a="lgFlipVertical",l={rotate:!0,rotateSpeed:400,rotateLeft:!0,rotateRight:!0,flipHorizontal:!0,flipVertical:!0,rotatePluginStrings:{flipVertical:"Flip vertical",flipHorizontal:"Flip horizontal",rotateLeft:"Rotate left",rotateRight:"Rotate right"}};return function(){function n(e,i){return this.core=e,this.$LG=i,this.settings=t(t({},l),this.core.settings),this}return n.prototype.buildTemplates=function(){var t="";this.settings.flipVertical&&(t+='<button type="button" id="lg-flip-ver" aria-label="'+this.settings.rotatePluginStrings.flipVertical+'" class="lg-flip-ver lg-icon"></button>'),this.settings.flipHorizontal&&(t+='<button type="button" id="lg-flip-hor" aria-label="'+this.settings.rotatePluginStrings.flipHorizontal+'" class="lg-flip-hor lg-icon"></button>'),this.settings.rotateLeft&&(t+='<button type="button" id="lg-rotate-left" aria-label="'+this.settings.rotatePluginStrings.rotateLeft+'" class="lg-rotate-left lg-icon"></button>'),this.settings.rotateRight&&(t+='<button type="button" id="lg-rotate-right" aria-label="'+this.settings.rotatePluginStrings.rotateRight+'" class="lg-rotate-right lg-icon"></button>'),this.core.$toolbar.append(t)},n.prototype.init=function(){var t=this;this.settings.rotate&&(this.buildTemplates(),this.rotateValuesList={},this.core.LGel.on(e+".rotate",(function(e){var i=e.detail.index;t.core.getSlideItem(i).find(".lg-img-rotate").get()||(t.core.getSlideItem(i).find(".lg-object").first().wrap("lg-img-rotate"),t.core.getSlideItem(t.core.index).find(".lg-img-rotate").css("transition-duration",t.settings.rotateSpeed+"ms"))})),this.core.outer.find("#lg-rotate-left").first().on("click.lg",this.rotateLeft.bind(this)),this.core.outer.find("#lg-rotate-right").first().on("click.lg",this.rotateRight.bind(this)),this.core.outer.find("#lg-flip-hor").first().on("click.lg",this.flipHorizontal.bind(this)),this.core.outer.find("#lg-flip-ver").first().on("click.lg",this.flipVertical.bind(this)),this.core.LGel.on(i+".rotate",(function(e){t.rotateValuesList[e.detail.index]||(t.rotateValuesList[e.detail.index]={rotate:0,flipHorizontal:1,flipVertical:1})})))},n.prototype.applyStyles=function(){this.core.getSlideItem(this.core.index).find(".lg-img-rotate").first().css("transform","rotate("+this.rotateValuesList[this.core.index].rotate+"deg) scale3d("+this.rotateValuesList[this.core.index].flipHorizontal+", "+this.rotateValuesList[this.core.index].flipVertical+", 1)")},n.prototype.rotateLeft=function(){this.rotateValuesList[this.core.index].rotate-=90,this.applyStyles(),this.triggerEvents(o,{rotate:this.rotateValuesList[this.core.index].rotate})},n.prototype.rotateRight=function(){this.rotateValuesList[this.core.index].rotate+=90,this.applyStyles(),this.triggerEvents(r,{rotate:this.rotateValuesList[this.core.index].rotate})},n.prototype.getCurrentRotation=function(t){if(!t)return 0;var e=this.$LG(t).style(),i=e.getPropertyValue("-webkit-transform")||e.getPropertyValue("-moz-transform")||e.getPropertyValue("-ms-transform")||e.getPropertyValue("-o-transform")||e.getPropertyValue("transform")||"none";if("none"!==i){var o=i.split("(")[1].split(")")[0].split(",");if(o){var r=Math.round(Math.atan2(o[1],o[0])*(180/Math.PI));return r<0?r+360:r}}return 0},n.prototype.flipHorizontal=function(){var t=this.core.getSlideItem(this.core.index).find(".lg-img-rotate").first().get(),e=this.getCurrentRotation(t),i="flipHorizontal";90!==e&&270!==e||(i="flipVertical"),this.rotateValuesList[this.core.index][i]*=-1,this.applyStyles(),this.triggerEvents(s,{flipHorizontal:this.rotateValuesList[this.core.index][i]})},n.prototype.flipVertical=function(){var t=this.core.getSlideItem(this.core.index).find(".lg-img-rotate").first().get(),e=this.getCurrentRotation(t),i="flipVertical";90!==e&&270!==e||(i="flipHorizontal"),this.rotateValuesList[this.core.index][i]*=-1,this.applyStyles(),this.triggerEvents(a,{flipVertical:this.rotateValuesList[this.core.index][i]})},n.prototype.triggerEvents=function(t,e){var i=this;setTimeout((function(){i.core.LGel.trigger(t,e)}),this.settings.rotateSpeed+10)},n.prototype.isImageOrientationChanged=function(){var t=this.rotateValuesList[this.core.index],e=Math.abs(t.rotate)%360!=0,i=t.flipHorizontal<0,o=t.flipVertical<0;return e||i||o},n.prototype.closeGallery=function(){this.isImageOrientationChanged()&&this.core.getSlideItem(this.core.index).css("opacity",0),this.rotateValuesList={}},n.prototype.destroy=function(){this.core.LGel.off(".lg.rotate"),this.core.LGel.off(".rotate")},n}()}));