#include <iostream>

int main()
{
#if DEBUG
	std::cout << "DEBUG - Hello Github Actions" << std::endl;
#elif RELEASE
	std::cout << "RELEASE - Hello Github Actions" << std::endl;
#else
	std::cout << "UNKNOWN CONFIG - Hello Github Actions" << std::endl;
#endif
	return 0;
}