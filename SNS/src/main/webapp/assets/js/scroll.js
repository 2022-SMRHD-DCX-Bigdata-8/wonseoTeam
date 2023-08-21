setInterval(() => {
        wrapper.scrollTop = wrapper.scrollTop + 100;
  
      if (wrapper.offsetHeight + wrapper.scrollTop >= wrapper.scrollHeight) {
        wrapper.scrollTop = 0;
      }
    }, 2000);
