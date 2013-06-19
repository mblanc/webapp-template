package com.mblanc.metrics;

import com.codahale.metrics.MetricRegistry;
import com.codahale.metrics.SharedMetricRegistries;
import com.codahale.metrics.health.HealthCheckRegistry;
import com.codahale.metrics.servlets.AdminServletContextListener;

public class MyAdminServletContextListener extends AdminServletContextListener {
	
	public static final MetricRegistry METRIC_REGISTRY = SharedMetricRegistries.getOrCreate("springMetrics");
	
	public static final HealthCheckRegistry HEALTH_CHECK_REGISTRY = new HealthCheckRegistry();

	@Override
	protected MetricRegistry getMetricRegistry() {
		return METRIC_REGISTRY;
	}

	@Override
	protected HealthCheckRegistry getHealthCheckRegistry() {
		return HEALTH_CHECK_REGISTRY;
	}
}
