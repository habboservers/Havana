package org.alexdev.http.template;

import io.pebbletemplates.pebble.error.PebbleException;
import io.pebbletemplates.pebble.extension.AbstractExtension;
import io.pebbletemplates.pebble.extension.Test;
import io.pebbletemplates.pebble.template.EvaluationContext;
import io.pebbletemplates.pebble.template.EvaluationContextImpl;
import io.pebbletemplates.pebble.template.PebbleTemplate;

import java.util.List;
import java.util.Map;

public class PresentTest extends AbstractExtension implements Test {

    @Override
    public boolean apply(Object input, Map<String, Object> args, PebbleTemplate self, EvaluationContext context, int lineNumber) throws PebbleException {
        if (!(input instanceof String)) throw new IllegalArgumentException("present test only accepts a string");
        return ((EvaluationContextImpl) context).getScopeChain().containsKey((String) input);
    }

    @Override
    public List<String> getArgumentNames() {
        return null;
    }

    @Override
    public Map<String, Test> getTests() {
        return Map.of("present", this);
    }
}
