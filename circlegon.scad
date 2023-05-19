// Draws a pentagon, hexagon what ever gon based around the center 

function circleCoordinate(radius, angle) = [radius*cos(angle), radius*sin(angle)];

module circlegon(numSides, radius)
{
    // A Triangle is the least amount of sides possible
    if (numSides >= 3 )
    {
        // Create a list of coordinates 
        shapePoints = [for (shapeAngel = [0:360/numSides:360-1]) circleCoordinate(radius, shapeAngel)];

        // Create a polygon of the list of circle coordinates
        polygon(points = shapePoints);
    }
}