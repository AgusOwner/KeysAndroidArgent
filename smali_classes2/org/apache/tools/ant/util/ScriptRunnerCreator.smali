.class public Lorg/apache/tools/ant/util/ScriptRunnerCreator;
.super Ljava/lang/Object;
.source "ScriptRunnerCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;
    }
.end annotation


# static fields
.field private static final BSF_MANAGER:Ljava/lang/String; = "org.apache.bsf.BSFManager"

.field private static final BSF_PACK:Ljava/lang/String; = "org.apache.bsf"

.field private static final BSF_RUNNER:Ljava/lang/String; = "org.apache.tools.ant.util.optional.ScriptRunner"

.field private static final JAVAX_MANAGER:Ljava/lang/String; = "javax.script.ScriptEngineManager"

.field private static final JAVAX_RUNNER:Ljava/lang/String; = "org.apache.tools.ant.util.optional.JavaxScriptRunner"

.field private static final RUNNER_FACTORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/tools/ant/util/ScriptManager;",
            "Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTIL_OPT:Ljava/lang/String; = "org.apache.tools.ant.util.optional"


# instance fields
.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public static synthetic $r8$lambda$pfC1xiGD6e701tTJG2wYcfBf7xU(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 86
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/tools/ant/util/ScriptManager;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 88
    sget-object v1, Lorg/apache/tools/ant/util/ScriptManager;->bsf:Lorg/apache/tools/ant/util/ScriptManager;

    new-instance v2, Lorg/apache/tools/ant/util/ScriptRunnerCreator$1;

    const-string v3, "org.apache.bsf.BSFManager"

    const-string v4, "org.apache.tools.ant.util.optional.ScriptRunner"

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lorg/apache/tools/ant/util/ScriptManager;->javax:Lorg/apache/tools/ant/util/ScriptManager;

    new-instance v2, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;

    const-string v3, "javax.script.ScriptEngineManager"

    const-string v4, "org.apache.tools.ant.util.optional.JavaxScriptRunner"

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->RUNNER_FACTORIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method static synthetic lambda$createRunner$1(Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;->managerClass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$createRunner$2(Ljava/util/Set;)Lorg/apache/tools/ant/BuildException;
    .locals 4

    .line 160
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 161
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->RUNNER_FACTORIES:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, "Unable to load script engine manager ("

    const-string v2, ")"

    const-string v3, "|"

    .line 162
    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 161
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized createRunner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/ScriptManager;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/util/ScriptManager;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->createRunner(Lorg/apache/tools/ant/util/ScriptManager;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createRunner(Lorg/apache/tools/ant/util/ScriptManager;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .locals 3

    const-string v0, "Unsupported language prefix "

    monitor-enter p0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 152
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/util/ScriptManager;->auto:Lorg/apache/tools/ant/util/ScriptManager;

    if-ne p1, v0, :cond_0

    .line 153
    sget-object p1, Lorg/apache/tools/ant/util/ScriptManager;->auto:Lorg/apache/tools/ant/util/ScriptManager;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    .line 157
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->RUNNER_FACTORIES:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p3}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/util/ScriptRunnerCreator;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 158
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda3;

    invoke-direct {p3}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 159
    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    .line 160
    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/util/ScriptRunnerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-object p1

    .line 144
    :cond_1
    :try_start_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 141
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "script language must be specified"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$createRunner$0$org-apache-tools-ant-util-ScriptRunnerCreator(Ljava/lang/String;Ljava/lang/ClassLoader;Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;)Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p3, v0, p1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;->getRunner(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object p1

    return-object p1
.end method
