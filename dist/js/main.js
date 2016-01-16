(function() {
  var circle, paper, rect, style;

  paper = Snap(800, 400);

  style = {
    fill: '#387',
    stroke: '#aaa',
    strokeWidth: 20
  };

  rect = paper.rect(350, 100, 250, 130).attr(style);

  circle = paper.circle(150, 150, 100).attr(style);

}).call(this);
