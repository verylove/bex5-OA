<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:35px;top:443px;"> 
    <div component="$UI/system/components/justep/data/bizData" xid="dSignature"
      concept="OA_SL_Signature" autoLoad="true" orderBy="fApplyDate:desc" directDelete="false"
      limit="1"> 
      <reader xid="default1" action="/OA/signature/logic/action/querySLSignatureAction"/>  
      <writer xid="default2"/>  
      <creator xid="default3"/>  
      <filter name="filter0" xid="filter1"><![CDATA[]]></filter>  
      <calculateRelation relation="recNO" xid="calculateRelation1" type="Integer"/>  
      <rule xid="rule2"> 
        <col name="recNO" xid="ruleCol1"> 
          <calculate xid="calculate1"> 
            <expr xid="default4">$row.index()+1</expr> 
          </calculate> 
        </col> 
      </rule> 
    </div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="itemsetData" idColumn="value"><column label="label" name="label" type="String" xid="xid1"></column>
  <column label="value" name="value" type="String" xid="xid2"></column>
  <data xid="default9">[{&quot;label&quot;:&quot;编辑中&quot;,&quot;value&quot;:&quot;bsEditing&quot;},{&quot;label&quot;:&quot;处理中&quot;,&quot;value&quot;:&quot;bsExecuting&quot;},{&quot;label&quot;:&quot;已完成&quot;,&quot;value&quot;:&quot;bsFinished&quot;},{&quot;label&quot;:&quot;已终止&quot;,&quot;value&quot;:&quot;bsAborted&quot;}]</data></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog"
    src="$UI/OA/signature/process/signatureApplyQuery/signatureApplyDetail.w" showTitle="true"
    status="normal" style="left:39px;top:272px;"/>  
  <span component="$UI/system/components/justep/bizFilter/bizFilter" xid="dataFilter"
    filterData="dSignature" filterCols="fNO,fIndianName,fSignatureTypeName,fRemark"/>  
  <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter form-inline"
    xid="toolBar1"> 
    <div component="$UI/system/components/justep/smartFilter/smartFilter" xid="smartFilter1"
      filterData="dSignature" filterCols="fNO,fSake,fIndianName,fUseDate,fSignatureTypeName,fRemark"
      class="pull-right"> 
      <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']"
        bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))"
        xid="input1"/> 
    </div>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" onClick="{'operation':'dSignature.refresh'}" xid="button1">
   <i xid="i1"></i>
   <span xid="span1"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" onClick="dtSignatureRowDblClick" xid="btnShow" label="查看" icon="icon-eye">
   <i xid="i3" class="icon-eye"></i>
   <span xid="span9">查看</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" onClick="{'operation':'dataFilter.menu'}" xid="button2">
   <i xid="i2"></i>
   <span xid="span8"></span></a>
  
  
  <div class="x-control" component="$UI/system/components/justep/gridFilter/gridFilter" xid="gridFilter2" filterData="dSignature" filterCol="fBizState">
   <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect" xid="gridSelect3" multiselect="true" defaultLabel="'全部'">
    <option xid="option5" data="itemsetData" value="value" label="label"></option></div> </div>
  <div class="x-control" component="$UI/system/components/justep/dateFilter/dateFilter" xid="dateFilter2" filterData="dSignature" dateCol="fApplyDate" defaultValue="all">
   <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect" xid="gridSelect4">
    <option xid="option6"></option></div> </div>
  <div component="$UI/system/components/justep/orgFilter/orgFilter" xid="orgFilter2" class="x-control" useMyself="true" defaultValue="_myself_" autoRefresh="true" filterData="dSignature" orgFIDCol="fApplyPsnFID" personIDCol="fApplyPsnID" style="width:auto;">
   <div class="x-gridSelect" component="$UI/system/components/justep/org/orgSelectPC" xid="orgSelectPC3" manageCodes="signatureManagement" multiselect="true" style="width:140px;">
    <option xid="option7">
     <columns xid="columns4">
      <column name="sName" xid="column3"></column></columns> </option> </div> </div></div>  
  <div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" rowActiveClass="active" class="table table-hover table-striped" xid="dtSignature" data="dSignature" onRowDblClick="dtSignatureRowDblClick">
   <columns xid="columns2"><column name="recNO" xid="column18" label="序号"></column><column name="fBizStateName" xid="column14"></column><column name="fNO" xid="column10"></column>
  <column name="fSignatureTypeName" xid="column12"></column><column name="fSake" xid="column11"></column>
  
  <column name="fRemark" xid="column13"></column>
  
  <column name="fApplyDeptName" xid="column15"></column>
  <column name="fApplyPsnName" xid="column16"></column>
  <column name="fApplyDate" xid="column17"></column>
  </columns></div><div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid"
    xid="pagerBar" data="dSignature"> 
    <div class="row" xid="div1"> 
      <div class="col-sm-3" xid="div2"> 
        <div class="x-pagerbar-length" xid="div3"> 
          <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect"
            class="x-pagerlimitselect" xid="pagerLimitSelect1"> 
            <span xid="span2">显示</span>  
            <select component="$UI/system/components/justep/select/select" class="form-control input-sm"
              xid="select1"> 
              <option value="10" xid="default5">10</option>  
              <option value="20" xid="default6">20</option>  
              <option value="50" xid="default7">50</option>  
              <option value="100" xid="default8">100</option> 
            </select>  
            <span xid="span3">条</span> 
          </label> 
        </div> 
      </div>  
      <div class="col-sm-3" xid="div4"> 
        <div class="x-pagerbar-info" xid="div5">当前显示0条，共0条</div> 
      </div>  
      <div class="col-sm-6" xid="div6"> 
        <div class="x-pagerbar-pagination" xid="div7"> 
          <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination"
            xid="pagination1"> 
            <li class="prev" xid="li1"> 
              <a href="#" xid="a1"> 
                <span aria-hidden="true" xid="span4">«</span>  
                <span class="sr-only" xid="span5">Previous</span> 
              </a> 
            </li>  
            <li class="next" xid="li2"> 
              <a href="#" xid="a2"> 
                <span aria-hidden="true" xid="span6">»</span>  
                <span class="sr-only" xid="span7">Next</span> 
              </a> 
            </li> 
          </ul> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
