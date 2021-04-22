/**
 * 为VUE写的拦截器
 * 前提：
 * 1、vue的声明名称为 v4m；
 * 2、有一个loading组件，<loading :show="showLoading" text="处理中"></loading>
 *
 * 作用：
 * 1、http请求开始时会出现加载提示，结束后提示消失
 */


Vue.http.interceptors.push(function(request, next){
  v4m.showLoading = true;
  next(function(response){
    v4m.showLoading = false;
    return response
  });
});
