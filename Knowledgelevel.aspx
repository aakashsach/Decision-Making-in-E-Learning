<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Knowledgelevel.aspx.cs" Inherits="Elearning.Knowledgelevel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <link rel="stylesheet" href="Learningform.css" type="text/css" media="all" />
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
        .auto-style2 {
            color: #000000;
            height: 98px;
        }
    </style>
</head>
<body >
  <div class="container">  
      <form id="contact" runat="server">
    <h6 style="font-family: 'HP Simplified Light'; font-size: 30px; color: #003300; font-weight: 900;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1"><strong><em>Knowledge level Assessment</em></strong></span></h6>
          <p class="auto-style2">Instructions : Select the topic you want to study from the list provided below For each multiple choice question ,add the percentage of correctness to each option available from 0 to 100.</p>
          <p>
              <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="344px" >
                  <asp:ListItem Value="1">Set Theory</asp:ListItem>
                  <asp:ListItem Value="2">Phases of Compiler</asp:ListItem>
                  <asp:ListItem Value="3">Lexical Analyser</asp:ListItem>
                  <asp:ListItem Value="4">Syntax Analyser</asp:ListItem>
                  <asp:ListItem Value="5">Intermediate Code Generation</asp:ListItem>
                  <asp:ListItem Value="6">Code Generation</asp:ListItem>
                  <asp:ListItem Value="7">3 Address Code</asp:ListItem>
                  <asp:ListItem Value="8">Directed Acyclic Graph</asp:ListItem>
                  <asp:ListItem Value="9">Flow Graph</asp:ListItem>
                  <asp:ListItem Value="10">Chomsky classification</asp:ListItem>
                  <asp:ListItem Value="11">Regular Language</asp:ListItem>
                  <asp:ListItem Value="12">Regular Grammar</asp:ListItem>
                  <asp:ListItem Value="13">Context Free Grammar</asp:ListItem>
                  <asp:ListItem Value="14">Parse Tree</asp:ListItem>
                  <asp:ListItem Value="15">Top Down</asp:ListItem>
                  <asp:ListItem Value="16">Bottom Up</asp:ListItem>
                  <asp:ListItem Value="17">Deteministic Finite Automata (DFA)</asp:ListItem>
                  <asp:ListItem Value="18">Non-Deterministic Finite Automata (N-DFA)</asp:ListItem>
                  <asp:ListItem Value="19">NFA to DFA</asp:ListItem>
                  <asp:ListItem Value="20">Turing Machine</asp:ListItem>
                  <asp:ListItem Value="21">ε-NFA</asp:ListItem>
                  <asp:ListItem Value="22">ε-NFA to DFA</asp:ListItem>
                  <asp:ListItem Value="23">Push down Automata(PDA)</asp:ListItem>
                  <asp:ListItem Value="24">Mealy Machine</asp:ListItem>
                  <asp:ListItem Value="25">Moory Machine</asp:ListItem>
              </asp:DropDownList>
          </p>
    <h4><strong> 
        1.&nbsp; 
        Let S be an infinite set and S1, S2, S3, ..., Sn be sets such that S1 U S2 U S3 .......Sn = S then

        </strong>
          </h4>
          <h4><strong> 
              A.	atleast one of the sets Si is a finite set

              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	not more than one of the set Si can be infinite

<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	atleast one of the sets Si is an infinite set

              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox3"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	none of these
              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="textbox4"></asp:RangeValidator>
        </strong>
          </h4>
   
    <h4>&nbsp;</h4>
          <h4>2. The Second phase of the compiler is:</h4>
          <h4><strong> 
              A. Intermediate Code Generation <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B. Syntax Analyser

<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C. Lexical Analyser&nbsp;

              <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox7"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	none of these
              <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox8"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
   
<h4><strong> 
        3. 
        The output of lexical analyser is</strong></h4>
          <h4><strong> 
              A. Machine code

              <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B. Intermediate code<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C. Stream of tokens

              <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator11" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox11"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D. Parse tree<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator12" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox12"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
<h4>4. Output file of Lex is _____ the input file is Myfile?      </h4>
          <h4><strong> 
              A. Myfile.e <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator13" runat="server" ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B. Myfile.yy <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator14" runat="server" ControlToValidate="TextBox14" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C. Myfile.lex<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator15" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox15"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D. Myfile.obj<asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator16" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox16"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
          <h4>5<strong>. An intermediate code form is 
        </strong>
          </h4>
          <h4><strong> 
              A.	Postfix notation

              <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator17" runat="server" ControlToValidate="TextBox17" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	Syntax trees

<asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator18" runat="server" ControlToValidate="TextBox18" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Three address code

              <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator19" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox19"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	all of these
              <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator20" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox20"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
<h4>6<strong>. The symbol table implementation is based on the property of locality of reference is  
        </strong>
          </h4>
          <h4><strong> 
              A.	Linear List

              <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator21" runat="server" ControlToValidate="TextBox21" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	Search Tree

<asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator22" runat="server" ControlToValidate="TextBox22" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Hash table

              <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator23" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox23"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	Self Organization
              <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator24" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox24"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
          <h4>7. The last phase of the compiler is:</h4>
          <h4><strong> 
              A. Intermediate Code Generation <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator25" runat="server" ControlToValidate="TextBox25" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B. Syntax Analyser

<asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator26" runat="server" ControlToValidate="TextBox26" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C. Code Generation

              <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator27" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="textbox27"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	none of these
              <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator28" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox28"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>

<h4>8. Three address code involves</h4>
          <h4><strong> 
              A.	Exactly 3 address

              <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator29" runat="server" ControlToValidate="TextBox29" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	At most most 3 address

<asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator30" runat="server" ControlToValidate="TextBox30" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	No unary operators

              <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator31" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox31"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	none of these
              <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator32" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox32"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
    
    <h4>9<strong>. 
 The graph that shows basic blocks and their successor relationship is called

        </strong>
          </h4>
          <h4><strong> 
              A.	DAG

              <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator33" runat="server" ControlToValidate="TextBox33" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	Flow Graph

<asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator34" runat="server" ControlToValidate="TextBox34" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Control Graph

              <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator35" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox35"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	Hamilton Graph
              <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator36" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox36"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
    <h4><strong> 
        10. 
        The language generated by the following grammar is
A0 -> aA1
A1 -> ab

        </strong>
          </h4>
          <h4><strong> 
              A.	Type 0

              <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator37" runat="server" ControlToValidate="TextBox37" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	Type 1

<asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator38" runat="server" ControlToValidate="TextBox38" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Type 2
              <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator39" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox39"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	Type 3
              <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator40" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox40"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
   
    <h4><strong> 
        11. 
       Which of the following is true?
        </strong>
          </h4>
          <h4><strong> 
              A.	(01)*0 = 0(10)*

              <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator41" runat="server" ControlToValidate="TextBox41" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	(0+1)*0(0+1)*1(0+1) = (0+1)*01(0+1)*

<asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator42" runat="server" ControlToValidate="TextBox42" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	(0+1)*01(0+1)*+1*0* = (0+1)*

              <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator43" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox43"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	All of the mentioned
              <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator44" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox44"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
<h4><strong> 
       12.  A language is regular if and only if
        </strong>
          </h4>
          <h4><strong> 
              A.	Accepted by DFA

              <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator45" runat="server" ControlToValidate="TextBox45" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	Accepted by PDA

<asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator46" runat="server" ControlToValidate="TextBox46" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Accepted by LBA

              <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator47" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox47"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	Accepted by Turing machine
              <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator48" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox48"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
    <h4><strong> 
        13. 
        If P & R are regular and also given that if PQ=R, then  </strong>
          </h4>
          <h4><strong> 
              A.	Q has to be regular

              <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator49" runat="server" ControlToValidate="TextBox49" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	Q cannot be regular

<asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator50" runat="server" ControlToValidate="TextBox50" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Q need not be regular

              <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator51" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox51"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	Q has to be a CFL
              <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator52" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox52"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
   
    <h4><strong> 
        14. 
       Which among the following is the root of the parse tree?        </strong>
          </h4>
          <h4><strong> 
              A.	Production P

              <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator53" runat="server" ControlToValidate="TextBox53" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	Terminal T

<asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator54" runat="server" ControlToValidate="TextBox54" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Variable V

              <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator55" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox55"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	Starting Variable S
              <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator56" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox56"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
   
    <h4><strong> 
        15. 
        Which of the following derivations does a top-down parser use while parsing an input string?
 
        </strong>
          </h4>
          <h4><strong> 
              A.	 Leftmost derivation

              <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator57" runat="server" ControlToValidate="TextBox57" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	Leftmost derivation in reverse

<asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator58" runat="server" ControlToValidate="TextBox58" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Rightmost derivation

              <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator59" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox59"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	Rightmost derivation in reverse
              <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator60" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox60"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
    <h4><strong> 
        16. 
        Inherited attribute is a natural choice in </strong>
          </h4>
          <h4><strong> 
              A.	Variable declarations record is maintained

              <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator61" runat="server" ControlToValidate="TextBox61" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	 L values and R values

<asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator62" runat="server" ControlToValidate="TextBox62" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	All of the mentioned

              <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator63" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox63"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	None of the mentioned 
              <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator64" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox64"></asp:RangeValidator>
        </strong>
          </h4>
   
    <h4><strong> 
        17. 
         The password to the admins account=”administrator”. The total number of states required to make a password-pass system using DFA would be __________


        </strong>
          </h4>
          <h4><strong> 
              A.	14 states

              <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator65" runat="server" ControlToValidate="TextBox65" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	13 states

<asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator66" runat="server" ControlToValidate="TextBox66" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	12 states

              <asp:TextBox ID="TextBox67" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator67" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox67"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	none of these
              <asp:TextBox ID="TextBox68" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator68" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox68"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
   
    <h4>18<strong>. In NFA, this very state is like dead-end non final state: </strong>
          </h4>
          <h4><strong> 
              A.	ACCEPT

              <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator69" runat="server" ControlToValidate="TextBox69" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	REJECT

<asp:TextBox ID="TextBox70" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator70" runat="server" ControlToValidate="TextBox70" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	DISTINCT
              <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator71" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox71"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	START
              <asp:TextBox ID="TextBox72" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator72" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox72"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
    <h4>19<strong>. 
         Consider the languages L1 = and L2 = {a}. Which one of the following represents L1 L2* U L1* </strong>
          </h4>
          <h4><strong> 
              A.	€

              <asp:TextBox ID="TextBox73" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator73" runat="server" ControlToValidate="TextBox73" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	 a*

<asp:TextBox ID="TextBox74" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator74" runat="server" ControlToValidate="TextBox74" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.     All of the mentioned

              <asp:TextBox ID="TextBox75" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator75" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox75"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	None of the mentioned
              <asp:TextBox ID="TextBox76" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator76" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox76"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
    <h4><strong> 
        20. 
       Which of the following a turing machine does not consist of? </strong>
          </h4>
          <h4><strong> 
              A.	input tape

              <asp:TextBox ID="TextBox77" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator77" runat="server" ControlToValidate="TextBox77" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	head

<asp:TextBox ID="TextBox78" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator78" runat="server" ControlToValidate="TextBox78" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	state register

              <asp:TextBox ID="TextBox79" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator79" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox79"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	none of the mentioned
              <asp:TextBox ID="TextBox80" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator80" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox80"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
    <h4><strong> 
        21. 
        Which one is a FALSE statement? </strong>
          </h4>
          <h4><strong> 
              A.	There exists a unique DFA for every regular language

              <asp:TextBox ID="TextBox81" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator81" runat="server" ControlToValidate="TextBox81" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	NFA can always are converted to a PDA

<asp:TextBox ID="TextBox82" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator82" runat="server" ControlToValidate="TextBox82" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	Complement of CFL is always recursive

              <asp:TextBox ID="TextBox83" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator83" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox83"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	Every NDFA can be converted to a DFA
              <asp:TextBox ID="TextBox84" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator84" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox84"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
    <h4><strong> 
        22. 
        The automaton which allows transformation to a new state without consuming any input symbols: </strong>
          </h4>
          <h4><strong> 
              A.	NFA

              <asp:TextBox ID="TextBox85" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator85" runat="server" ControlToValidate="TextBox85" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	DFA

<asp:TextBox ID="TextBox86" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator86" runat="server" ControlToValidate="TextBox86" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	NFA-1

              <asp:TextBox ID="TextBox87" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator87" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox87"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	all of these
              <asp:TextBox ID="TextBox88" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator88" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox88"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
   
    <h4><strong> 
        23. 
        The transition a Push down automaton makes is additionally dependent upon the: </strong>
          </h4>
          <h4><strong> 
              A.	stack

              <asp:TextBox ID="TextBox89" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator89" runat="server" ControlToValidate="TextBox89" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	input tape

<asp:TextBox ID="TextBox90" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator90" runat="server" ControlToValidate="TextBox90" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	terminals

              <asp:TextBox ID="TextBox91" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator91" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox91"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	none of these
              <asp:TextBox ID="TextBox92" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator92" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox92"></asp:RangeValidator>
        </strong>
          </h4>
          <p>&nbsp;</p>
   
    <h4><strong> 
        24. 
        In Moore machine, output is produced over the change of: </strong>
          </h4>
          <h4><strong> 
              A.	 transitions

              <asp:TextBox ID="TextBox93" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator93" runat="server" ControlToValidate="TextBox93" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	states

<asp:TextBox ID="TextBox94" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator94" runat="server" ControlToValidate="TextBox94" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	both

              <asp:TextBox ID="TextBox95" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator95" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox95"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	none of these
              <asp:TextBox ID="TextBox96" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator96" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox96"></asp:RangeValidator>
        </strong>
          </h4>
   
   
<h4><strong> 
      25. For a give Moore Machine, Given Input=’101010’, thus the output would be of length:
        </strong>
          </h4>
          <h4><strong> 
              A.	|Input|+1

              <asp:TextBox ID="TextBox97" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator97" runat="server" ControlToValidate="TextBox97" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              B.	|Input|

<asp:TextBox ID="TextBox98" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator98" runat="server" ControlToValidate="TextBox98" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              C.	|Input|-1

              <asp:TextBox ID="TextBox99" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator99" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox99"></asp:RangeValidator>
        </strong>
          </h4>
          <h4><strong> 
              D.	can't be predicted
              <asp:TextBox ID="TextBox100" runat="server"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator100" runat="server" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="0" ValidationGroup="1" ControlToValidate="TextBox100"></asp:RangeValidator>
        </strong>
          </h4>
          
    &nbsp;<fieldset>
              <asp:Button ID="Button1" runat="server" BackColor="#006600" ForeColor="White" Height="35px" Text="Submit" Width="100%" OnClick="Button1_Click"  />
    </fieldset>
      </form>
</div>
</body>
</html>

+