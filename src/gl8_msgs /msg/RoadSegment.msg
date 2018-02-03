bool type 
# if the road segment is line, the value of type is 0;
# if the road segment is curve, the value of type is 1; 
float64 length
Point2D origin
Point2D terminus
# below parameters are for curve segments
# if the road turns counterclockwise, then turn_direction is 0
# if the road turns clockwise, then turn_direction is 1
bool turn_direction
Point2D center
float64 radius
Vector2 start_direction
Vector2 end_direction



