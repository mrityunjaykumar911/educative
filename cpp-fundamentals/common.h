//
// Created by mrityunjay kumar on 2020-05-31.
//

#ifndef EDUCATIVE_CPP_FUNDAMENTALS_COMMON_H_
#define EDUCATIVE_CPP_FUNDAMENTALS_COMMON_H_
#define likely(x)       __builtin_expect((x),1)
#define unlikely(x)     __builtin_expect((x),0)

// Adopted from stuffed_str
class simple_str {
public:
  static unsigned pad(unsigned v)
  {
    if (likely(v <= 512)) {
      return (v + 15) & ~15;
    }
    v--;
    v |= v >> 1;
    v |= v >> 2;
    v |= v >> 4;
    v |= v >> 8;
    v |= v >> 16;
#if UINT_MAX == UINT64_MAX
    v |= v >> 32;
#endif
    v++;
    return v;
  }

  static inline int size_for(int len) {
    int res = pad(len + sizeof(simple_str));
    return res;

  }

  bool needs_resize(int len) {
    return len > (int)capacity_;
  }

  const char * data() const {
    return buf_;
  }
  
  int length() const {
    return size_;
  }
  
  int capacity() {
    return capacity_;
  }

  inline simple_str& operator= (const std::string& v) {
    int len = v.length();
    size_ = len;
    if (unlikely(needs_resize(len))) {
      capacity_ = size_for(len) - sizeof(simple_str);
      buf_ = (char *) malloc(capacity_);
    }
    memcpy(buf_, v.data(), len);
    return *this;
  }
  
  explicit operator std::string() {
    return std::string(this->data(), this->length());
  }
  
  friend std::ostream& operator<<(std::ostream& os, simple_str* c_str){
    os << std::string(c_str->data (),c_str->length ()) ;
	return os;
  }

  explicit simple_str(const std::string& v) {
    int len = v.length();
    size_ = len;
    capacity_ = size_for(len) - sizeof(simple_str);
    buf_ = (char *) malloc(capacity_);
    memcpy(buf_, v.data(), len);
  }
  
  explicit simple_str(char *array,int length) {
    int len = length;
    size_ = length;
    capacity_ = size_for(len) - sizeof(simple_str);
//    buf_ = (char *) malloc(capacity_);
	buf_ = array;
//    memcpy(buf_, array, len);
  }
  
  ~simple_str (){
    if(buf_)
    	free (buf_);
  }
  
private:
  uint32_t size_;
  uint32_t capacity_;
  char *buf_;
};

class HumanBeing{
private:
  simple_str *c_name=nullptr;
  
public:
  HumanBeing(const char *array,int size){
    c_name = new simple_str((char *)array,size);
    std::cout << "[ctor] " << c_name << std::endl;
  }
  
  std::string getName() const{
      return std::string(this->c_name->data (),c_name->length ());
  }
  void chanName(const std::string& newName){
  	if(c_name){
  	  delete c_name;
  	  c_name = nullptr;
  	}
    c_name = new simple_str(newName);
  }
  
  ~HumanBeing (){
   	delete c_name;
   }
};

#endif //EDUCATIVE_CPP_FUNDAMENTALS_COMMON_H_
