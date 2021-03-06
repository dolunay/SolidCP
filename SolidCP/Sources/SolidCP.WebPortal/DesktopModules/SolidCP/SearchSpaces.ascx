<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchSpaces.ascx.cs" Inherits="SolidCP.Portal.SearchSpaces" %>
<%@ Import Namespace="SolidCP.Portal" %>
<%@ Register Src="UserControls/ServerDetails.ascx" TagName="ServerDetails" TagPrefix="uc3" %>
<%@ Register Src="UserControls/Comments.ascx" TagName="Comments" TagPrefix="uc4" %>

<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function () {
        $("#tbSearch").autocomplete({
            zIndex: 100,
            source: function (request, response) {
                $.ajax({
                    type: "post",
                    dataType: "json",
                    data: {
                        term: request.term,
                        fullType: 'Spaces',
                        itemType: $("#ddlItemType").val()
                    },
                    url: "AjaxHandler.ashx",
                    success: function (data) {
                        response($.map(data, function (item) {
                            return {
                                label: item.TextSearch,
                                code: item
                            };
                        }));
                    }
                })
            },
            select: function (event, ui) {
                var item = ui.item;
                $("#ddlItemType").val(item.code.ColumnType);
                $("#tbSearchFullType").val(item.code.FullType);
                $("#tbSearchText").val(item.code.TextSearch);
            }
        });
    });//]]>
</script>

<div class="FormButtonsBar">
   <asp:Panel ID="tblSearch" runat="server" DefaultButton="cmdSearch" CssClass="NormalBold">
   <asp:Label ID="lblSearch" runat="server" meta:resourcekey="lblSearch"></asp:Label>
   <div align="center">
                                <div class="form-inline">
                                            <div class="input-group">
                                <asp:DropDownList ClientIDMode="Static" ID="ddlItemType" runat="server" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                    <div class="input-group">
                                <asp:TextBox ID="tbSearch" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:TextBox ID="tbSearchFullType" ClientIDMode="Static" runat="server" type="hidden"></asp:TextBox>
                                <asp:TextBox ID="tbSearchText" ClientIDMode="Static" runat="server" type="hidden"></asp:TextBox>
                                <div class="input-group-btn">
                                 <CPCC:StyleButton ID="cmdSearch" Runat="server" meta:resourcekey="cmdSearch" class="btn btn-primary" CausesValidation="false" OnClick="cmdSearch_Click"><i class="fa fa-search" aria-hidden="true"></i></CPCC:StyleButton>
                                    </div>
                            </div>
                                    </div></div>
    </asp:Panel>
</div>

<asp:GridView ID="gvPackages" runat="server" AutoGenerateColumns="False"
    EmptyDataText="gvPackages" CssSelectorClass="NormalGridView"
    AllowSorting="True" DataSourceID="odsItemsPaged" AllowPaging="True">
    <Columns>
        <asp:TemplateField SortExpression="ItemName" HeaderText="gvPackagesItemName">
            <ItemTemplate>
	            <asp:hyperlink ID="lnkItem" runat="server" NavigateUrl='<%# GetItemPageUrl((int)Eval("ItemID"), (int)Eval("PackageID")) %>' Visible="<%# AllowItemLink() %>">
		            <%# Eval("ItemName") %>
	            </asp:hyperlink>
                <asp:Label ID="itemName" runat="server" Visible="<%# !AllowItemLink() %>">
                    <%# Eval("ItemName") %>
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField SortExpression="PackageName" HeaderText="gvPackagesName">
            <ItemTemplate>
	            <asp:hyperlink id=lnkSpace runat="server" NavigateUrl='<%# GetSpaceHomePageUrl((int)Eval("PackageID")) %>'>
		            <%# Eval("PackageName") %>
	            </asp:hyperlink>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField SortExpression="Username" HeaderText="gvPackagesUsername">
            <ItemTemplate>
	            <asp:hyperlink id=lnkUser runat="server" NavigateUrl='<%# GetUserHomePageUrl((int)Eval("UserID")) %>'>
		            <%# Eval("Username") %>
	            </asp:hyperlink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:ObjectDataSource ID="odsItemsPaged" runat="server" EnablePaging="True" SelectCountMethod="SearchServiceItemsPagedCount"
    SelectMethod="SearchServiceItemsPaged" SortParameterName="sortColumn" TypeName="SolidCP.Portal.PackagesHelper"
    OnSelected="odsPackagesPaged_Selected">
    <SelectParameters>
        <asp:QueryStringParameter Name="itemTypeId" QueryStringField="ItemTypeID" Type="int32" />
        <asp:QueryStringParameter Name="filterValue" QueryStringField="Query" />
    </SelectParameters>
</asp:ObjectDataSource>