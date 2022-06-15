local cipher = {
	shift1 = {
		['q'] = 'p';
		['w'] = 'q';
		['e'] = 'w';
		['r'] = 'e';
		['t'] = 'r';
		['y'] = 't';
		['u'] = 'y';
		['i'] = 'u';
		['o'] = 'i';
		['p'] = 'o';
		['a'] = 'l';
		['s'] = 'a';
		['d'] = 's';
		['f'] = 'd';
		['g'] = 'f';
		['h'] = 'g';
		['j'] = 'h';
		['k'] = 'j';
		['l'] = 'k';
		['z'] = 'm';
		['x'] = 'z';
		['c'] = 'x';
		['v'] = 'c';
		['b'] = 'v';
		['n'] = 'b';
		['m'] = 'n';
	};
	shift2 = {
		['q'] = 'w';
		['w'] = 'e';
		['e'] = 'r';
		['r'] = 't';
		['t'] = 'y';
		['y'] = 'u';
		['u'] = 'i';
		['i'] = 'o';
		['o'] = 'p';
		['p'] = 'q';
		['a'] = 's';
		['s'] = 'd';
		['d'] = 'f';
		['f'] = 'g';
		['g'] = 'h';
		['h'] = 'j';
		['j'] = 'k';
		['k'] = 'l';
		['l'] = 'a';
		['z'] = 'x';
		['x'] = 'c';
		['c'] = 'v';
		['v'] = 'b';
		['b'] = 'n';
		['n'] = 'm';
		['m'] = 'z';
	};
}

local funcs = {};

function funcs.Encrypt(msg)
  local newtxt = "";
	for _,v in pairs(string.split(string.lower(text),"")) do
		local shift = (string.len(newtxt)%2)+1;
		if cipher["shift"..tostring(shift)][v] then
			newtxt ..= cipher["shift"..tostring(shift)][v];
		else
			newtxt ..= v;
		end
	end
	return newtxt
end;

function funcs.Decrypt(msg)
  local newtxt = "";
	for _,v in pairs(string.split(string.lower(text),"")) do
		local shift = ((string.len(newtxt)+1)%2)+1;
		if cipher["shift"..tostring(shift)][v] then
			newtxt ..= cipher["shift"..tostring(shift)][v];
		else
			newtxt ..= v;
		end
	end
	return newtxt
end;

return funcs;
