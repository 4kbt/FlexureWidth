%in = [x1 y1 x2 y2]

function o = rDiffAve( in )

	rDiff = sqrt( (in(:,1)-in(:,3)).^2 + (in(:,2) - in(:,4)).^2) ;
	rMean = [mean( [in(:,1) in(:,3)] ,2)  mean( [in(:,2) in(:,4)] ,2 ) ];

	o = [rMean rDiff];

end

%!test
%!
%! o = rDiffAve( [ 0 0 1 1] );
%! assert( o , [0.5 0.5 sqrt(2)])

%!test
%!
%! o = rDiffAve( [ 0 0 1 1; 1 1 1 2] );
%! assert( o , [0.5 0.5 sqrt(2); 1 1.5 1])
