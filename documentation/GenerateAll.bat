@echo off
set chapters=00_Preface 01_Introduction 02_Concepts 03_SpecIF_Metamodel 03_SpecIF_JSON-Schema ^
03_SpecIF_Diagram_Exchange 04_SpecIF_Class_Definitions 05_SpecIF_Web_API 06_Introduction_to_SpecIF_Model_Integration ^
06_SpecIF_Model_Integration_Guide_for_Archimate 06_SpecIF_Model_Integration_Guide_for_BPMN ^
06_SpecIF_Model_Integration_Guide_for_FMC 06_SpecIF_Model_Integration_Guide_for_SysML 08_SpecIF_ReqIF

for %%a in (%chapters%) do (
    pandoc -f markdown -t docx -o word/%%a.docx --reference-doc=word/custom-reference.docx %%a.md
)


