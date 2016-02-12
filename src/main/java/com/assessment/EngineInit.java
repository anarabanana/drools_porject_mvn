package com.assessment;
//package com.assessment.java;

import org.drools.KnowledgeBase;
import org.drools.KnowledgeBaseFactory;
import org.drools.builder.KnowledgeBuilder;
import org.drools.builder.KnowledgeBuilderError;
import org.drools.builder.KnowledgeBuilderErrors;
import org.drools.builder.KnowledgeBuilderFactory;
import org.drools.builder.ResourceType;
import org.drools.io.ResourceFactory;
import org.drools.logger.KnowledgeRuntimeLogger;
import org.drools.logger.KnowledgeRuntimeLoggerFactory;
import org.drools.runtime.StatelessKnowledgeSession;
import org.drools.runtime.rule.StatefulRuleSession;


public class EngineInit {

	KnowledgeBase kbase;
	private static StatelessKnowledgeSession sessionObject;

	public void initializeDrools() {
		
		KnowledgeBuilder kbuilder = KnowledgeBuilderFactory
				.newKnowledgeBuilder();
		kbuilder.add(ResourceFactory.newClassPathResource("Sample.drl"),
				ResourceType.DRL);
		KnowledgeBuilderErrors errors = kbuilder.getErrors();
		if (errors.size() > 0) {
			for (KnowledgeBuilderError error : errors) {
				System.err.println(error);
			}
			throw new IllegalArgumentException("Could not parse knowledge.");
		}
		kbase = KnowledgeBaseFactory.newKnowledgeBase();
		kbase.addKnowledgePackages(kbuilder.getKnowledgePackages());

		// KnowledgeBase kbase = readKnowledgeBase();

		StatelessKnowledgeSession kSession = kbase.newStatelessKnowledgeSession();
		KnowledgeRuntimeLogger logger = KnowledgeRuntimeLoggerFactory
				.newFileLogger(kSession, "test");
	}
	public UserInfo runRules(UserInfo ob) {
		//System.out.println(((StatefulRuleSession) sessionObject).fireAllRules());
		sessionObject = kbase.newStatelessKnowledgeSession();
		sessionObject.execute(ob);
		//((StatefulRuleSession) sessionObject).fireAllRules();
		return ob;
	}

}
