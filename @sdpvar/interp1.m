function varargout = interp1(varargin)
%INTERP1 (overloaded)

switch class(varargin{3})

    case 'sdpvar'   
        
        if numel(varargin{3})>1
            error('Only scalar functions supported in SDPVAR/INTERP1');
        end
        
        % Reorder arguments to make sure sdpvar is first argument.
        % Use local version of interp to deal with this
        varargout{1} = yalmip('define','interp1_internal',varargin{[3 1 2]});   
     
    otherwise
        error('SDPVAR/INTERP1 called with strange argument!');
end