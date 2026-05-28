BEGIN{
	pi = 3.1415
	pi = 0.31415e+1
	pi = 31415.0e-4
	pi = 31415e-4
	pi = 31415.e-4
	a = 0xdeadbeef
	a = 012345
	a = 12345
}
//{
	print NR, $0
}
END{
}
