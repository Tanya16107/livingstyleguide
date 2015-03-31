require 'document_test_helper'

class JavaScriptTest < DocumentTestCase

  def test_javascript
    assert_render_equals <<-INPUT, <<-OUTPUT
      @javascript
      alert("Hello world!");
    INPUT
      <section class="livingstyleguide--example livingstyleguide--javascript-example" id="section-c1ffd7"> <script> alert("Hello world!"); </script>
      <pre class="livingstyleguide--code-block">
        <code class="livingstyleguide--code">alert(<q>"<b>Hello</b> world!"</q>);</code>
      </pre> </section>
    OUTPUT
  end

end
