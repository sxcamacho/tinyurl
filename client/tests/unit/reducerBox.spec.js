import { shallowMount, createLocalVue } from '@vue/test-utils'
import ReducerBox from "@/components/ReducerBox"

describe("ReducerBox.vue", () => {
  it("check input binding", () => {    
    const url = "http://wwww.sebastiancamacho.com";
    const wrapper = shallowMount(ReducerBox);
    const input = wrapper.find("input");
    input.element.value = url;
    input.trigger('input') 
    expect(wrapper.vm.url).toBe(url);
  });
});
