#include <iostream>
#include <fstream>
#include <cstdint>

//Define instruction

#define HLT  0b1000000000000000
#define MI   0b010000000000000
#define RI   0b0010000000000000
#define RO   0b0001000000000000
#define IO   0b0000100000000000
#define II   0b0000010000000000
#define AI   0b0000001000000000
#define AO   0b0000000100000000
#define ALUO 0b0000000001000000
#define SU   0b0000000000100000
#define BI   0b0000000000010000
#define BO   0b0000000000001000
#define CE   0b0000000000000100
#define CO   0b0000000000000010
#define JUMP 0b0000000000000001

#define REV16_A(X) (((X) << 8) | ((X)>>8))

using namespace std;

int main(int, char**) {
    char ROMaddr_size = 16;
    unsigned int ROM_size = (unsigned int) pow(2, ROMaddr_size);
    size_t data_size = ROM_size * sizeof(uint16_t);
    uint16_t *data = (uint16_t*)malloc(data_size);
    cout << "ROM adress size (bits): " << ROM_size << endl;
    cout << "Size of data (bits): " << data_size << endl;

    for(unsigned int i = 0; i < ROM_size; i++){
        data[i] = 0x1234;
    }

    for(unsigned int i = 0; i < ROM_size; i++){
        data[i] = REV16_A(data[i]);
    }

    std::ofstream file("out.bin", std::ios::binary);
    file.write((char*)data, data_size);
    file.close();

    return 0;
}