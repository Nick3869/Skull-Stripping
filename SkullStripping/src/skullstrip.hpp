#ifndef SKULLSTRIP_HPP
#define SKULLSTRIP_HPP

#include <QString>

void strip(const char* input, const char* output, const char* label);
void strip_filter(const char* input, const char* output, const char* label);
void strip_dilate(const char* input, const char* output, const char* label);
void strip_smooth(const char* input, const char* output, const char* label);

#endif // SKULLSTRIP_HPP
