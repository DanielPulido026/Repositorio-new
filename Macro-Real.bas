Attribute VB_Name = "Módulo1"
Sub Borrar()
Attribute Borrar.VB_ProcData.VB_Invoke_Func = " \n14"

    Application.ScreenUpdating = False
    
    Workbooks("Real").Activate
    Sheets("Data").Select
    Range("A2", Range("G2").End(xlDown)).ClearContents
    Range("A2").Select

    'Definir objetos a utilizar
    
    Dim wbOrigen As Workbook
    Dim wbOrigen1 As Workbook
    Dim wbOrigen2 As Workbook
    Dim wbOrigen3 As Workbook
    Dim wbOrigen4 As Workbook

'Ubicacion de archivo - File path
    Path = "C:\Users\dpulidoc\Desktop\A.Estado bandejas\Devoluciones.xlsx"
    Path1 = "C:\Users\dpulidoc\Desktop\A.Estado bandejas\Novedades.xlsx"
    Path2 = "C:\Users\dpulidoc\Desktop\A.Estado bandejas\AVC.xlsx"
    Path3 = "C:\Users\dpulidoc\Desktop\A.Estado bandejas\PQRD.xlsx"
    Path4 = "C:\Users\dpulidoc\Desktop\A.Estado bandejas\SGP.xlsx"
    
'Abrir wbOrigen As Workbook
    Set wbOrigen = Workbooks.Open(Path)
    Sheets("Data").Select
    Range("A2", Range("G2").End(xlDown)).Copy
    Workbooks("Real").Activate
    Range("A2").Select
    ActiveCell.PasteSpecial xlPasteValues
    Range("A2").End(xlDown).Select
    ActiveCell.Offset(rowOffset:=1).Activate
    Application.CutCopyMode = False
    wbOrigen.Close

'Abrir wbOrigen1 As Workbook
    Set wbOrigen1 = Workbooks.Open(Path1)
    Sheets("Data").Select
    Range("A2", Range("G2").End(xlDown)).Copy
    Workbooks("Real").Activate
    Range("A2").End(xlDown).Select
    ActiveCell.Offset(rowOffset:=1).Activate
    ActiveCell.PasteSpecial xlPasteValues
    Application.CutCopyMode = False
    wbOrigen1.Close

'Abrir wbOrigen2 As Workbook

    Set wbOrigen2 = Workbooks.Open(Path2)
    Sheets("Data").Select
    Range("A2", Range("G2").End(xlDown)).Copy
    Workbooks("Real").Activate
    Range("A2").End(xlDown).Select
    ActiveCell.Offset(rowOffset:=1).Activate
    ActiveCell.PasteSpecial xlPasteValues
    Application.CutCopyMode = False
    wbOrigen2.Close

'Abrir wbOrigen3 As Workbook

    Set wbOrigen3 = Workbooks.Open(Path3)
    Sheets("Data").Select
    Range("A2", Range("G2").End(xlDown)).Copy
    Workbooks("Real").Activate
    Range("A2").End(xlDown).Select
    ActiveCell.Offset(rowOffset:=1).Activate
    ActiveCell.PasteSpecial xlPasteValues
    Application.CutCopyMode = False
    wbOrigen3.Close

'Abrir wbOrigen3 As Workbook

    Set wbOrigen4 = Workbooks.Open(Path4)
    Sheets("Data").Select
    Range("A2", Range("G2").End(xlDown)).Copy
    Workbooks("Real").Activate
    Range("A2").End(xlDown).Select
    ActiveCell.Offset(rowOffset:=1).Activate
    ActiveCell.PasteSpecial xlPasteValues
    Application.CutCopyMode = False
    wbOrigen4.Close
    
    Range("A1").Select
    
End Sub
