module {

  public type Object = {
    view : [Event.EventInfo] -> Graphics.Result;
    update : [Event.EventInfo] -> Graphics.Result;
  };

  public type Service = actor {
    view : query [Event.EventInfo] -> async Graphics.Result;
    update : [Event.EventInfo] -> async Graphics.Result;
  };

  public type Dim = { width: Nat;
                      height: Nat };

  public type Pos = { x:Nat;
                      y:Nat };

  public type Rect = { pos:Pos;
                       dim:Dim };

  public module Event {

    public type UserInfo = {
      userName: Text;
      textColor: (
        (Nat, Nat, Nat),
        (Nat, Nat, Nat)
      )
    };

    public type EventInfo = {
      userInfo: UserInfo;
      nonce: ?Nat;
      dateTimeUtc: Text;   // use [ISO8601](https://tools.ietf.org/html/rfc3339)
      dateTimeLocal: Text; // use [ISO8601](https://tools.ietf.org/html/rfc3339)
      event: Event;
    };

    public type Event = {
      #skip;
      #quit;
      #keyDown : [KeyInfo];
      #mouseDown : Pos;
      #windowSize : Dim;
    };

    public type KeyInfo = {
      key : Text;
      alt : Bool;
      ctrl : Bool;
      meta: Bool;
      shift: Bool
    };
  };

  public module Graphics {

    public type Color = (Nat, Nat, Nat);

    public type Node = { rect: Rect;
                         fill: Fill;
                         elms: Elms };

    public type Elm = { #rect: (Rect, Fill);
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
      #err: { out:Out; message:?Text };
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
  };

}
