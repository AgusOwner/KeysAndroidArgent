.class public Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;
.super Lorg/apache/tools/ant/util/ScriptRunnerBase;
.source "JavaxScriptRunner.java"


# static fields
.field private static final DROP_GRAAL_SECURITY_RESTRICTIONS:Ljava/lang/String; = "polyglot.js.allowAllAccess"

.field private static final ENABLE_NASHORN_COMPAT_IN_GRAAL:Ljava/lang/String; = "polyglot.js.nashorn-compat"

.field private static final JS_LANGUAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private compiledScript:Ljavax/script/CompiledScript;

.field private keptEngine:Ljavax/script/ScriptEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "js"

    const-string v1, "javascript"

    .line 235
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->JS_LANGUAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;-><init>()V

    return-void
.end method

.method private applyBindings(Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getBeans()Ljava/util/Map;

    move-result-object v0

    const-string v1, "FX"

    .line 184
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda1;-><init>()V

    .line 186
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private createEngine()Ljavax/script/ScriptEngine;
    .locals 4

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->keptEngine:Ljavax/script/ScriptEngine;

    if-eqz v0, :cond_0

    return-object v0

    .line 196
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->languageIsJavaScript()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->maybeEnableNashornCompatibility()V

    .line 199
    :cond_1
    new-instance v0, Ljavax/script/ScriptEngineManager;

    invoke-direct {v0}, Ljavax/script/ScriptEngineManager;-><init>()V

    .line 200
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/ScriptEngineManager;->getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "15"

    .line 201
    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->languageIsJavaScript()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "Java 15 has removed Nashorn, you must provide an engine for running JavaScript yourself. GraalVM JavaScript currently is the preferred option."

    const/4 v3, 0x1

    .line 204
    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 209
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->maybeApplyGraalJsProperties(Ljavax/script/ScriptEngine;)V

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getKeepEngine()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    iput-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->keptEngine:Ljavax/script/ScriptEngine;

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$applyBindings$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1

    .line 186
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s:%s"

    .line 186
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private languageIsJavaScript()Z
    .locals 2

    .line 238
    sget-object v0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->JS_LANGUAGES:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private maybeApplyGraalJsProperties(Ljavax/script/ScriptEngine;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Graal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    .line 220
    invoke-interface {p1, v0}, Ljavax/script/ScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object p1

    const/4 v0, 0x1

    .line 221
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "polyglot.js.allowAllAccess"

    invoke-interface {p1, v1, v0}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private maybeEnableNashornCompatibility()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.disable.graal.nashorn.compat"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "false"

    goto :goto_0

    :cond_0
    const-string v0, "true"

    :goto_0
    const-string v1, "polyglot.js.nashorn-compat"

    .line 229
    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static unwrap(Ljava/lang/Throwable;)Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 247
    instance-of v0, p0, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/tools/ant/BuildException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 251
    instance-of v1, p0, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_1

    .line 252
    move-object v0, p0

    check-cast v0, Lorg/apache/tools/ant/BuildException;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public evaluateScript(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "run compiled script "

    const-string v1, "compile script "

    const-string v2, "script compilation not available for "

    const-string v3, "Unable to create javax script engine for "

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->checkLanguage()V

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->replaceContextLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getCompiled()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "%s.%s.%d.%d"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "org.apache.ant.scriptcache"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v7, v11

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v7, v11

    .line 103
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 107
    iget-object v7, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    if-nez v7, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/script/CompiledScript;

    iput-object v7, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    .line 110
    :cond_0
    iget-object v7, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    if-nez v7, :cond_3

    .line 111
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->createEngine()Ljavax/script/ScriptEngine;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 117
    instance-of v8, v7, Ljavax/script/Compilable;

    if-eqz v8, :cond_1

    .line 118
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v11}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 121
    check-cast v7, Ljavax/script/Compilable;

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getScript()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v7, p1}, Ljavax/script/Compilable;->compile(Ljava/lang/String;)Ljavax/script/CompiledScript;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v11}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    .line 129
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    invoke-virtual {p1, v5, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Unable to create javax script engine for %s"

    new-array v1, v10, [Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 132
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    if-eqz p1, :cond_4

    .line 133
    new-instance p1, Ljavax/script/SimpleBindings;

    invoke-direct {p1}, Ljavax/script/SimpleBindings;-><init>()V

    .line 135
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda2;-><init>(Ljavax/script/Bindings;)V

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->applyBindings(Ljava/util/function/BiConsumer;)V

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    invoke-virtual {v0, p1}, Ljavax/script/CompiledScript;->eval(Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    return-object p1

    .line 145
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->createEngine()Ljavax/script/ScriptEngine;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda3;-><init>(Ljavax/script/ScriptEngine;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->applyBindings(Ljava/util/function/BiConsumer;)V

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getScript()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    return-object p1

    .line 147
    :cond_5
    :try_start_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 167
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 169
    instance-of p1, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz p1, :cond_6

    .line 170
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    :cond_6
    move-object p1, v0

    .line 175
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 163
    invoke-static {p1}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->unwrap(Ljava/lang/Throwable;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    :goto_2
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    .line 178
    throw p1
.end method

.method public executeScript(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->evaluateScript(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    const-string v0, "javax"

    return-object v0
.end method

.method public supportsLanguage()Z
    .locals 4

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->keptEngine:Ljavax/script/ScriptEngine;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->checkLanguage()V

    .line 66
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->replaceContextLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->createEngine()Ljavax/script/ScriptEngine;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    .line 73
    throw v1

    .line 72
    :catch_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner;->restoreContextLoader(Ljava/lang/ClassLoader;)V

    return v2
.end method
