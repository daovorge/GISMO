function c = set(c, prop_name, val)
   
   %SET Set properties for correlation object
   %   c = SET(c,prop_name,val)
   %
   %   see help correlation/get.m for valid property names
   
   % Author: Michael West, Geophysical Institute, Univ. of Alaska Fairbanks
   % $Date$
   % $Revision$
   
   switch upper(prop_name)
      case {'WAVEFORMS' 'WAVEFORM' 'WAVES'}
         c.W = reshape(val,length(val),1); % make 1 column
      case {'TRIG'}
         c.trig = reshape(val,length(val),1);
      case {'CORR'}
         c.corrmatrix = val;
      case {'LAG'}
         c.lags = val;
      case {'STAT'}
         c.stat = val;
      case {'LINK'}
         c.link = val;
      case {'CLUST'}
         c.clust = val;
      otherwise
         warning('can''t understand property name');
         help correlation/set
   end;
end

