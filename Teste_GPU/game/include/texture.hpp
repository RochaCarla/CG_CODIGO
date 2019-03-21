#ifndef __TEXTURE_HPP__
#define __TEXTURE_HPP__

#include <string>

class Texture {
public:
    Texture(std::string image_path);

    void use();

private:
    unsigned int texture_id;
};

#endif
