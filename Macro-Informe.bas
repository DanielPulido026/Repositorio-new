Attribute VB_Name = "Módulo1"
Sub Actualizar()

    Application.ScreenUpdating = False
    
'Pestañas visibles
    Sheets("Informacion").Visible = True
    Sheets("Data Anterior").Visible = True
    Sheets("Festivos").Visible = True
    
'Eliminar datos de pestaña informacion
    Sheets("Informacion").Select
    Range("A2", Range("G2").End(xlDown)).ClearContents
    Range("A2").Select

'Definir objetos a utilizar
    Dim wbOrigen As Workbook
    Dim shread As Worksheet
    Dim shWrite As Worksheet

'Ubicacion de archivo - File path
    Path = "C:\Users\dpulidoc\Desktop\A.Estado bandejas\Real.xlsm"

'Abrir wbOrigen As Workbook
    Set wbOrigen = Workbooks.Open(Path)

'Worksheet(hojas) que vamos a trabajar
    Set shread = wbOrigen.Worksheets("Data")

'Worksheet donde se agrega la informacion
    Set shWrite = ThisWorkbook.Worksheets("Informacion")
    shread.Range("A2", Range("R2").End(xlDown)).Copy shWrite.Range("A2")

    wbOrigen.Close

'Borrar contenido Data anterior
    Sheets("Data Anterior").Select
    Range("A2", Range("R2").End(xlDown)).ClearContents
    Range("A2").Select

'Copiar de Data
    Sheets("Data").Select
    Range("A4").Select
    Range("A4", Range("R4").End(xlDown)).Copy

'Pegar en valores a Data anterior

    Sheets("Data Anterior").Select
    Range("A2").PasteSpecial xlPasteValues
    Application.CutCopyMode = False
    Range("A2").Select

'Borrar contedidos de Data
    Sheets("Data").Select
    Range("A4").Select
    Range("A4", Range("R4").End(xlDown)).ClearContents

'Copiar datos Hoja "Informacion" - 3 primeras columnas
    Sheets("Informacion").Select
    Range("A2", Range("C2").End(xlDown)).Copy

'Pegar a Hoja "Data" - 3 primeras columnas
    Sheets("Data").Select
    Range("A4").PasteSpecial xlPasteValues

'Copiar datos Hoja "Informacion" - Ultimas 4 columnas
    Sheets("Informacion").Select
    Range("D2", Range("G2").End(xlDown)).Copy

'Pegar a Hoja "Data" - Ultimas 4 columnas
    Sheets("Data").Select
    Range("O4").PasteSpecial xlPasteValues
    Application.CutCopyMode = False
    Range("D4").Select


'Ir a formulas de abajo
    Selection.End(xlDown).Select
    Range(Selection, Selection.End(xlToRight)).Copy
    ActiveCell.Offset(0, -1).Activate

'Pegar Formulas arriba
    Selection.End(xlUp).Select
    ActiveCell.Offset(0, 1).Activate
    ActiveSheet.Paste
    Range("D4").Select
    Range("D4", Range("D4").End(xlDown)).Select
    ActiveSheet.Paste
    Application.CutCopyMode = False

'Pegar en valores todo
    Range("A3", Range("R3").End(xlDown)).Select
    Selection.Copy
    Selection.PasteSpecial xlPasteValues
    Application.CutCopyMode = False
    Range("A3").Select

'Ordenar

    Range("A3").Select
    ActiveWorkbook.Worksheets("Data").Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Data").Sort.SortFields.Add2 Key:=Range("E4", Range("E4").End(xlDown)) _
        , SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:=xlSortNormal

    With ActiveWorkbook.Worksheets("Data").Sort
        .SetRange Range("A3", Range("R3").End(xlDown))
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With

    ActiveWorkbook.Worksheets("Data").Sort.SortFields.Clear
    With ActiveWorkbook.Worksheets("Data").Sort
        .SetRange Range("A3", Range("R3").End(xlDown))
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
'Ocultar pestaña informacion
'    Sheets("Informacion").Visible = False
'    Sheets("Data Anterior").Visible = False
'    Sheets("Festivos").Visible = False
    
'Pestaña resumen

End Sub
