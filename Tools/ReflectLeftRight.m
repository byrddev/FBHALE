%{
For FBHALE software
Copyright (C) 2018-present Facebook, Inc.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%}
  
function [ m2 ] = ReflectLeftRight( matrix, flipsign)

m2 = [];
m2(:,1:2:2*length(matrix(1,:))) = matrix(:,1:length(matrix(1,:)));

if flipsign == 1
    m2(:,2:2:2*length(matrix(1,:))) = -1.*matrix(:,1:length(matrix(1,:)));
else
    m2(:,2:2:2*length(matrix(1,:))) = matrix(:,1:length(matrix(1,:)));
end

end

