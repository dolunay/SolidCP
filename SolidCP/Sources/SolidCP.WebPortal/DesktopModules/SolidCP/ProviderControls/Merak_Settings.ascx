<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Merak_Settings.ascx.cs" Inherits="SolidCP.Portal.ProviderControls.Merak_Settings" %>
<%@ Register Src="../UserControls/SelectIPAddress.ascx" TagName="SelectIPAddress" TagPrefix="uc1" %>
<%@ Import Namespace="SolidCP.Portal" %>
<table cellpadding="7" cellspacing="0" width="100%">
	<tr>
		<td class="SubHead" width="200" nowrap>
		    <asp:Label ID="lblPublicIP" runat="server" meta:resourcekey="lblPublicIP" Text="Public IP Address:"></asp:Label>
		</td>
		<td width="100%">
            <uc1:SelectIPAddress ID="ipAddress" runat="server" ServerIdParam="ServerID" />
        </td>
	</tr>
	<tr>
		<td class="SubHead" nowrap>
		    <asp:Label ID="lblAccountType" runat="server" meta:resourcekey="lblAccountType" Text="Mail Account Type:"></asp:Label>
		</td>
		<td width="100%">
            <asp:DropDownList runat="server" id="ddlAccountType" CssClass="form-control">
				<asp:listitem value="0" text="POP3" />
				<asp:listitem value="1" text="IMAP & POP3" />
				<asp:listitem value="2" text="IMAP" />
            </asp:DropDownList>
        </td>
	</tr>
</table>

<div id="SeDiv" runat="server">
<fieldset>
    <legend>
        <asp:Label ID="lblRouteFromSE" runat="server" meta:resourcekey="lblRouteFromSE"
            Text="Automatic Mail Filter" CssClass="NormalBold"></asp:Label>&nbsp;
    </legend>
    <asp:CheckBox ID="chkSEEnable" runat="server" meta:resourcekey="chkEnableSE" Text="Enable Automatic Mail Filtering (SpamExperts) for domains managed by this provider" />
    <asp:UpdatePanel ID="GeneralUpdatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
        <ContentTemplate>
            <asp:GridView id="gvSEDestinations" runat="server"  EnableViewState="true" AutoGenerateColumns="false"
	        Width="100%" EmptyDataText="" CssSelectorClass="NormalGridView" OnRowCommand="gvSEDestinations_RowCommand" >
	        <Columns>
		        <asp:TemplateField HeaderText="Destinations">
			        <ItemStyle Width="100%"></ItemStyle>
			        <ItemTemplate>
				        <asp:Label id="lblSEDestination" runat="server" EnableViewState="true" ><%# PortalAntiXSS.Encode((string)Container.DataItem)%></asp:Label>
                    </ItemTemplate>
		        </asp:TemplateField>
                <asp:TemplateField>
                    <ItemStyle Width="65px" HorizontalAlign="Center" />
                    <ItemTemplate>
                        <CPCC:StyleButton id="imgDelRouteFromSE" CssClass="btn btn-danger" runat="server" CommandName="DeleteItem" CommandArgument='<%# (string)Container.DataItem %>' OnClientClick="return confirm('Are you sure you want to delete selected route?')"> 
                            &nbsp;<i class="fa fa-trash-o"></i>&nbsp; 
                        </CPCC:StyleButton>
                    </ItemTemplate>
		        </asp:TemplateField>
	        </Columns>
	        </asp:GridView>
            <br />
            <div class="input-group col-sm-6">
             <asp:TextBox ID="tbSEDestinations" CssClass="form-control" style="vertical-align: middle;" runat="server"></asp:TextBox>
                <span class="input-group-btn">
                <CPCC:StyleButton ID="bntAddSEDestination" runat="server" CssClass="btn btn-primary" OnClick="bntAddSEDestination_Click" CausesValidation="False">
                <i class="fa fa-plus">&nbsp;</i>&nbsp;<asp:Localize runat="server" meta:resourcekey="bntAddSEDestination" />
                </CPCC:StyleButton>
                </span>
            </div>
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
</fieldset>
</div>