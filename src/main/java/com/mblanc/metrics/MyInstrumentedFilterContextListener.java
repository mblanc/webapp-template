package com.mblanc.metrics;

import com.codahale.metrics.MetricRegistry;
import com.codahale.metrics.SharedMetricRegistries;
import com.codahale.metrics.servlet.InstrumentedFilterContextListener;

public class MyInstrumentedFilterContextListener extends InstrumentedFilterContextListener {
    public static final MetricRegistry REGISTRY = SharedMetricRegistries.getOrCreate("springMetrics");

    @Override
    protected MetricRegistry getMetricRegistry() {
        return REGISTRY;
    }
}

