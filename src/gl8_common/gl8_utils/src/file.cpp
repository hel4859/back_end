//
// Created by wlh on 17-7-9.
//

#include <gl8_utils/file.h>

namespace gl8 {
namespace common{
namespace util{


    std::vector<std::string> split_line(const std::string& str, const std::string& delims)
    {
        std::vector<std::string> tokens;
        std::string::size_type last_index = str.find_first_not_of(delims, 0);
        std::string::size_type index = str.find_first_of(delims, last_index);

        while (std::string::npos != index || std::string::npos != last_index) {
            tokens.push_back(str.substr(last_index, index - last_index));
            last_index = str.find_first_not_of(delims, index);
            index = str.find_first_of(delims, last_index);
        }
        return tokens;
    }

}//namespace util
}//namespace common
}//namespace gl8


