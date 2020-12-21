unit WayListUnit;

interface

  type
    Mn=Set of Byte;

    TWay = record
      Name:string;
      Used:Mn;
      Cost:Integer;
    end;

    TList = ^TListRec;

    TListRec = record
      Way:TWay;
      Next:TList;
    end;

  procedure AddToList(Way:TWay; var List:TList);
  function NewList : TList;
  procedure AddToSortedList(Way:TWay; var List:TList);

implementation

  //����� ������
  function NewList : TList;
  begin
    New(Result);
    Result^.Next:=nil;
  end;

  //���������� �������� � ������
  procedure AddToList(Way:TWay; var List:TList);
  var
    x:TList;
  begin
    x:=List;

    //���� ���� ������
    while x^.Next<> nil do
      x:=x^.Next;

    //���������
    New(x^.Next);
    x^.Next^.Way:=Way;
    x^.Next^.Next:=nil;
  end;

  procedure AddToSortedList(Way:TWay; var List:TList);
  var
    x,y:TList;
  begin
    x:=List;

    //���� ����� ������� ������
    while (x^.Next<> nil) and (x^.Next.Way.Cost < Way.Cost) do
      x:=x^.Next;

    //���������
    New(y);
    y^.Way:=Way;
    y^.Next:=x^.Next;
    x^.Next:=y;
  end;

end.

