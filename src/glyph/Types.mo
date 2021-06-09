import Types "../Types";

module {
  public type FlowAtts = {
    dir: Dir2D;
    intraPad: Nat;
    interPad: Nat;
  };

  public type Dir2D = {#up; #down; #left; #right};

  public type BitMapData = {
    dim: Types.Dim;
    bits: [[Bool]];
  };

  public type BitMapAtts = {
    zoom: Nat;
    fgFill: Types.Fill;
    bgFill: Types.Fill;
  };

  public type BitMapTextAtts = {
    zoom: Nat;
    fgFill: Types.Fill;
    bgFill: Types.Fill;
    flow: FlowAtts;
  };
}
