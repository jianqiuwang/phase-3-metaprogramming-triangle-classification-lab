class Triangle
  # write code here
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end 

  def kind
    valid_triangles
   if @a==@b && @b==@c
    :equilateral
   elsif @a==@b || @a==@c || @b==@c
    :isosceles
   else @a!=@b && @b!=@c
    :scalene
   end
  end

  def great_than_zero?
     @a>0 || @b>0 || @c>0
  end

  def inequality?
    @a+@b>@c && @a+@c>@b && @c+@b>@a
  end

  def valid_triangles
    # if !(@a+@b<@c && @a+@c<@b && @c+@b<@a) && !(@a<=0 || @b<=0 || @c<=0)
    #   raise TriangleError 
      raise TriangleError unless  great_than_zero? && inequality?
    # elsif @a+@b<@c && @a+@c<@b && @c+@b<@a
    #   raise TriangleError
  end
    

  class TriangleError < StandardError
  end

end
