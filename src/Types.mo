module {

  public type Color = (Nat, Nat, Nat);

  public type Dim = { width: Nat;
                      height: Nat };

  public type Pos = { x:Nat;
                      y:Nat };

  public type Rect = { pos:Pos;
                       dim:Dim };

  public type Node = { rect: Rect;
                       fill: Fill;
                       elms: Elms };

  public type Elm = { #rect: (Rect, Fill);
                      #text: (Text, TextAtts);
                      #node: Node };

  public type Fill = {#open: (Color, Nat);
                      #closed: Color;
                      #none};

  public type Elms = [Elm];

  public type Out = {
    #draw:Elm;
    #redraw:[(Text, Elm)];
  };

  public type Result = {
    #ok: Out;
    #err: Out;
  };

  public type TextAtts = {
    zoom: Nat;
    fgFill: Fill;
    bgFill: Fill;
    glyphDim: Dim;
    glyphFlow: FlowAtts;
  };

  public type FlowAtts = {
    dir: Dir2D;
    intraPad: Nat;
    interPad: Nat;
  };

  public type Dir2D = {#up; #down; #left; #right};

  public type BitMapData = {
    dim: Dim;
    bits: [[Bool]];
  };

  public type BitMapAtts = {
    zoom: Nat;
    fgFill: Fill;
    bgFill: Fill;
  };

  public type BitMapTextAtts = {
    zoom: Nat;
    fgFill: Fill;
    bgFill: Fill;
    flow: FlowAtts;
  };
}
