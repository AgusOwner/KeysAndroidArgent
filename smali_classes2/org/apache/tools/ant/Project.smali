.class public Lorg/apache/tools/ant/Project;
.super Ljava/lang/Object;
.source "Project.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/Project$AntRefTable;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final JAVA_1_0:Ljava/lang/String; = "1.0"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_1_1:Ljava/lang/String; = "1.1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_1_2:Ljava/lang/String; = "1.2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_1_3:Ljava/lang/String; = "1.3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_1_4:Ljava/lang/String; = "1.4"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSG_DEBUG:I = 0x4

.field public static final MSG_ERR:I = 0x0

.field public static final MSG_INFO:I = 0x2

.field public static final MSG_VERBOSE:I = 0x3

.field public static final MSG_WARN:I = 0x1

.field public static final TOKEN_END:Ljava/lang/String; = "@"

.field public static final TOKEN_START:Ljava/lang/String; = "@"

.field private static final VISITED:Ljava/lang/String; = "VISITED"

.field private static final VISITING:Ljava/lang/String; = "VISITING"


# instance fields
.field private baseDir:Ljava/io/File;

.field private coreLoader:Ljava/lang/ClassLoader;

.field private defaultInputStream:Ljava/io/InputStream;

.field private defaultTarget:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private final globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

.field private final globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

.field private final idReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private inputHandler:Lorg/apache/tools/ant/input/InputHandler;

.field private final isLoggingMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private keepGoingMode:Z

.field private volatile listeners:[Lorg/apache/tools/ant/BuildListener;

.field private final listenersLock:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private final references:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final referencesLock:Ljava/lang/Object;

.field private final targets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final threadGroupTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ThreadGroup;",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final threadTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Lorg/apache/tools/ant/Project$AntRefTable;

    invoke-direct {v0}, Lorg/apache/tools/ant/Project$AntRefTable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->idReferences:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    .line 160
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

    .line 163
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/types/FilterSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 171
    new-instance v1, Lorg/apache/tools/ant/types/FilterSetCollection;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>(Lorg/apache/tools/ant/types/FilterSet;)V

    iput-object v1, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->listenersLock:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/tools/ant/BuildListener;

    .line 181
    iput-object v1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    .line 185
    new-instance v1, Lorg/apache/tools/ant/Project$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/Project$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/Project$$ExternalSyntheticThreadLocal3;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/Project$$ExternalSyntheticThreadLocal3;-><init>(Ljava/util/function/Supplier;)V

    iput-object v2, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lorg/apache/tools/ant/Project;->coreLoader:Ljava/lang/ClassLoader;

    .line 194
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 195
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    .line 198
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 199
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/Project;->threadGroupTasks:Ljava/util/Map;

    .line 204
    iput-object v1, p0, Lorg/apache/tools/ant/Project;->inputHandler:Lorg/apache/tools/ant/input/InputHandler;

    .line 209
    iput-object v1, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    .line 214
    iput-boolean v0, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    .line 262
    new-instance v0, Lorg/apache/tools/ant/input/DefaultInputHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->inputHandler:Lorg/apache/tools/ant/input/InputHandler;

    return-void
.end method

.method private fireMessageLoggedEvent(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 2238
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2240
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2241
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2242
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/BuildEvent;->setMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 2244
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/BuildEvent;->setMessage(Ljava/lang/String;I)V

    .line 2246
    :goto_0
    iget-object p2, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, p3, :cond_2

    return-void

    .line 2263
    :cond_2
    :try_start_0
    iget-object p2, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2264
    iget-object p2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length p3, p2

    :goto_1
    if-ge v1, p3, :cond_3

    aget-object v0, p2, v1

    .line 2265
    invoke-interface {v0, p1}, Lorg/apache/tools/ant/BuildListener;->messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2268
    :cond_3
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/tools/ant/Project;->isLoggingMessage:Ljava/lang/ThreadLocal;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2269
    throw p1
.end method

.method public static getJavaVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 921
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;
    .locals 4

    .line 1744
    instance-of v0, p0, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 1745
    check-cast p0, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p0

    return-object p0

    .line 1748
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getProject"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1749
    const-class v1, Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    .line 1750
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/Project;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$new$0()Ljava/lang/Boolean;
    .locals 1

    .line 185
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic lambda$topoSort$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, " `%s\'"

    .line 1840
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeCircularException(Ljava/lang/String;Ljava/util/Stack;)Lorg/apache/tools/ant/BuildException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/tools/ant/BuildException;"
        }
    .end annotation

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Circular dependency: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " <- "

    .line 1957
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1960
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private setAntLib()V
    .locals 2

    .line 328
    const-class v0, Lorg/apache/tools/ant/Project;

    invoke-static {v0}, Lorg/apache/tools/ant/launch/Locator;->getClassSource(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ant.core.lib"

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 595
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z

    return-void
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "on"

    .line 1732
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    .line 1733
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "yes"

    .line 1734
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static translatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1502
    invoke-static {p0}, Lorg/apache/tools/ant/util/FileUtils;->translatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tsort(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Stack;Ljava/util/Vector;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/Target;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "VISITING"

    .line 1902
    invoke-virtual {p3, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    invoke-virtual {p4, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Target;

    if-nez v1, :cond_1

    .line 1909
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Target \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist in the project \""

    .line 1911
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\". "

    .line 1913
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1915
    invoke-virtual {p4}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1916
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "It is used from target \""

    .line 1917
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    .line 1919
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {p1, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1923
    :cond_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/Target;->getDependencies()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 1924
    invoke-virtual {p3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 1927
    invoke-direct/range {v4 .. v9}, Lorg/apache/tools/ant/Project;->tsort(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Stack;Ljava/util/Vector;)V

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_3

    goto :goto_0

    .line 1930
    :cond_3
    invoke-static {v5, p4}, Lorg/apache/tools/ant/Project;->makeCircularException(Ljava/lang/String;Ljava/util/Stack;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    .line 1933
    :cond_4
    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-ne p1, p2, :cond_5

    const-string p2, "VISITED"

    .line 1938
    invoke-virtual {p3, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    invoke-virtual {p5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 1935
    :cond_5
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Unexpected internal error: expected to pop "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " but got "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public addBuildListener(Lorg/apache/tools/ant/BuildListener;)V
    .locals 6

    .line 391
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-ne v5, p1, :cond_0

    .line 395
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/tools/ant/BuildListener;

    .line 401
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    iget-object v4, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v4, v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v2

    aput-object p1, v1, v2

    .line 403
    iput-object v1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    .line 404
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addDataTypeDefinition(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1070
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

    new-instance v1, Lorg/apache/tools/ant/types/FilterSet$Filter;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/ant/types/FilterSet$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterSet;->addFilter(Lorg/apache/tools/ant/types/FilterSet$Filter;)V

    return-void
.end method

.method public addIdReference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1977
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->idReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V
    .locals 2

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " +Target: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 1154
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1155
    invoke-virtual {p2, p0}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1156
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addOrReplaceTarget(Lorg/apache/tools/ant/Target;)V
    .locals 1

    .line 1140
    invoke-virtual {p1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    return-void
.end method

.method public addReference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Overriding previous definition of reference to "

    const-string v1, "Adding reference: "

    .line 1987
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1988
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    check-cast v3, Lorg/apache/tools/ant/Project$AntRefTable;

    invoke-static {v3, p1}, Lorg/apache/tools/ant/Project$AntRefTable;->access$000(Lorg/apache/tools/ant/Project$AntRefTable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 1991
    monitor-exit v2

    return-void

    :cond_0
    if-eqz v3, :cond_1

    .line 1993
    instance-of v3, v3, Lorg/apache/tools/ant/UnknownElement;

    if-nez v3, :cond_1

    .line 1994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1997
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1998
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1126
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1129
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/Project;->addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    return-void

    .line 1127
    :cond_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate target: `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addTarget(Lorg/apache/tools/ant/Target;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1109
    invoke-virtual {p1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    return-void
.end method

.method public addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 984
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public checkTaskClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1001
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->checkTaskClass(Ljava/lang/Class;)V

    .line 1003
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1008
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-array v0, v1, [Ljava/lang/Class;

    .line 1014
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    const-class v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    invoke-static {p1, p0}, Lorg/apache/tools/ant/TaskAdapter;->checkTaskClass(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1023
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1024
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1025
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1018
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No public no-arg constructor in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1020
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1021
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is abstract"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1010
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1011
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not public"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1005
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1006
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1617
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1638
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    if-eqz p3, :cond_0

    .line 1639
    iget-object p3, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1638
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;)V

    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1663
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    if-eqz p3, :cond_0

    .line 1664
    iget-object p3, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1663
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Z)V

    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;ZZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1694
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    if-eqz p3, :cond_0

    .line 1695
    iget-object p3, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 1694
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;ZZ)V

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1521
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1542
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    if-eqz p3, :cond_0

    .line 1543
    iget-object p3, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1542
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/types/FilterSetCollection;)V

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1567
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    if-eqz p3, :cond_0

    .line 1568
    iget-object p3, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1567
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/types/FilterSetCollection;Z)V

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1598
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    if-eqz p3, :cond_0

    .line 1599
    iget-object p3, p0, Lorg/apache/tools/ant/Project;->globalFilters:Lorg/apache/tools/ant/types/FilterSetCollection;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 1598
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/types/FilterSetCollection;ZZ)V

    return-void
.end method

.method public copyInheritedProperties(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 708
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->copyInheritedProperties(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public copyUserProperties(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 692
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->copyUserProperties(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public createClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;
    .locals 1

    const/4 v0, 0x1

    .line 357
    invoke-static {p1, p0, p2, v0}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;
    .locals 2

    .line 344
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 343
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->createClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public createDataType(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1208
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createDataType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createSubProject()Lorg/apache/tools/ant/Project;
    .locals 3

    .line 275
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Project;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    new-instance v0, Lorg/apache/tools/ant/Project;

    invoke-direct {v0}, Lorg/apache/tools/ant/Project;-><init>()V

    .line 279
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->initSubProject(Lorg/apache/tools/ant/Project;)V

    return-object v0
.end method

.method public createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1192
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object p1

    return-object p1
.end method

.method public defaultInput([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1305
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1306
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    .line 1303
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "No input provided for project"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public demuxFlush(Ljava/lang/String;Z)V
    .locals 1

    .line 1342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 1344
    :goto_0
    invoke-virtual {p0, p0, p1, p2}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 1346
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_1

    .line 1348
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public demuxInput([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1325
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->defaultInput([BII)I

    move-result p1

    return p1

    .line 1327
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result p1

    return p1
.end method

.method public demuxOutput(Ljava/lang/String;Z)V
    .locals 1

    .line 1277
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 1279
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 1281
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_1

    .line 1283
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public executeSortedTargets(Ljava/util/Vector;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/Target;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1384
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1386
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/Target;

    .line 1388
    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getDependencies()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1389
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1391
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Cannot execute \'"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' - \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' failed or was not executed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1391
    invoke-virtual {p0, v3, v4, v6}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    move v4, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_0

    .line 1401
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->performTasks()V

    .line 1402
    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 1409
    iget-boolean v5, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    if-eqz v5, :cond_3

    goto :goto_2

    .line 1410
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception v4

    .line 1404
    iget-boolean v5, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    if-eqz v5, :cond_5

    :goto_2
    if-eqz v4, :cond_0

    .line 1415
    instance-of v5, v4, Lorg/apache/tools/ant/BuildException;

    const-string v7, "\'."

    const-string v8, "\' failed with message \'"

    const-string v9, "Target \'"

    if-eqz v5, :cond_4

    .line 1416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1419
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1416
    invoke-virtual {p0, v3, v5, v6}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    if-nez v2, :cond_0

    .line 1422
    move-object v2, v4

    check-cast v2, Lorg/apache/tools/ant/BuildException;

    goto/16 :goto_0

    .line 1425
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1428
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1425
    invoke-virtual {p0, v3, v5, v6}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    .line 1429
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    if-nez v2, :cond_0

    .line 1431
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1405
    :cond_5
    throw v4

    :cond_6
    if-nez v2, :cond_7

    return-void

    .line 1439
    :cond_7
    throw v2
.end method

.method public executeTarget(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1374
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/Project;->topoSort(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->executeSortedTargets(Ljava/util/Vector;)V

    return-void

    .line 1367
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "No target specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeTargets(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, ","

    .line 1263
    invoke-static {v0, p1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ant.project.invoked-targets"

    .line 1262
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getExecutor()Lorg/apache/tools/ant/Executor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lorg/apache/tools/ant/Executor;->executeTargets(Lorg/apache/tools/ant/Project;[Ljava/lang/String;)V

    return-void
.end method

.method public fireBuildFinished(Ljava/lang/Throwable;)V
    .locals 4

    .line 2108
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2109
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2110
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 2111
    invoke-interface {v3, v0}, Lorg/apache/tools/ant/BuildListener;->buildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2114
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/IntrospectionHelper;->clearCache()V

    return-void
.end method

.method public fireBuildStarted()V
    .locals 5

    .line 2094
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2095
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2096
    invoke-interface {v4, v0}, Lorg/apache/tools/ant/BuildListener;->buildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2283
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1

    .line 2299
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2300
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2301
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/Project;->fireMessageLoggedEvent(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;I)V

    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2315
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1

    .line 2331
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Target;)V

    .line 2332
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2333
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/Project;->fireMessageLoggedEvent(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;I)V

    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2346
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method protected fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1

    .line 2362
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 2363
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2364
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/Project;->fireMessageLoggedEvent(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;I)V

    return-void
.end method

.method public fireSubBuildFinished(Ljava/lang/Throwable;)V
    .locals 5

    .line 2142
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2143
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2144
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 2145
    instance-of v4, v3, Lorg/apache/tools/ant/SubBuildListener;

    if-eqz v4, :cond_0

    .line 2146
    check-cast v3, Lorg/apache/tools/ant/SubBuildListener;

    invoke-interface {v3, v0}, Lorg/apache/tools/ant/SubBuildListener;->subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireSubBuildStarted()V
    .locals 6

    .line 2124
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2125
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2126
    instance-of v5, v4, Lorg/apache/tools/ant/SubBuildListener;

    if-eqz v5, :cond_0

    .line 2127
    check-cast v4, Lorg/apache/tools/ant/SubBuildListener;

    invoke-interface {v4, v0}, Lorg/apache/tools/ant/SubBuildListener;->subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected fireTargetFinished(Lorg/apache/tools/ant/Target;Ljava/lang/Throwable;)V
    .locals 3

    .line 2177
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Target;)V

    .line 2178
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2179
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 2180
    invoke-interface {v2, v0}, Lorg/apache/tools/ant/BuildListener;->targetFinished(Lorg/apache/tools/ant/BuildEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected fireTargetStarted(Lorg/apache/tools/ant/Target;)V
    .locals 4

    .line 2159
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Target;)V

    .line 2160
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 2161
    invoke-interface {v3, v0}, Lorg/apache/tools/ant/BuildListener;->targetStarted(Lorg/apache/tools/ant/BuildEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected fireTaskFinished(Lorg/apache/tools/ant/Task;Ljava/lang/Throwable;)V
    .locals 3

    .line 2212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V

    .line 2213
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 2214
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 2215
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 2216
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/BuildEvent;->setException(Ljava/lang/Throwable;)V

    .line 2217
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 2218
    invoke-interface {v2, v0}, Lorg/apache/tools/ant/BuildListener;->taskFinished(Lorg/apache/tools/ant/BuildEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected fireTaskStarted(Lorg/apache/tools/ant/Task;)V
    .locals 4

    .line 2194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V

    .line 2195
    new-instance v0, Lorg/apache/tools/ant/BuildEvent;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildEvent;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 2196
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 2197
    invoke-interface {v3, v0}, Lorg/apache/tools/ant/BuildListener;->taskStarted(Lorg/apache/tools/ant/BuildEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBaseDir()Ljava/io/File;
    .locals 1

    .line 878
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "."

    .line 880
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 882
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->printStackTrace()V

    .line 885
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    return-object v0
.end method

.method public getBuildListeners()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/BuildListener;",
            ">;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 439
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 440
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 441
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCopyOfDataTypeDefinitions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getCopyOfReferences()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2035
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2036
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2037
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCopyOfTargets()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .line 1175
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getCopyOfTaskDefinitions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1053
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getCoreLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->coreLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDataTypeDefinitions()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1082
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ComponentHelper;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInputStream()Ljava/io/InputStream;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getDefaultTarget()Ljava/lang/String;
    .locals 1

    .line 733
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->defaultTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 789
    invoke-static {p0}, Lorg/apache/tools/ant/types/Description;->getDescription(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Project;->description:Ljava/lang/String;

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2086
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExecutor()Lorg/apache/tools/ant/Executor;
    .locals 5

    const-string v0, "ant.executor"

    .line 1224
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "ant.executor.class"

    .line 1226
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1228
    const-class v1, Lorg/apache/tools/ant/helper/DefaultExecutor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1230
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to create object of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 1232
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->coreLoader:Ljava/lang/ClassLoader;

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1241
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 1236
    :catch_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .line 1238
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :goto_0
    if-eqz v0, :cond_1

    .line 1247
    move-object v1, v0

    check-cast v1, Lorg/apache/tools/ant/Executor;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/Project;->setExecutor(Lorg/apache/tools/ant/Executor;)V

    goto :goto_1

    .line 1244
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to obtain a Target Executor instance."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1249
    :cond_2
    :goto_1
    check-cast v0, Lorg/apache/tools/ant/Executor;

    return-object v0
.end method

.method public getFilters()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 830
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterSet;->getFilterHash()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->globalFilterSet:Lorg/apache/tools/ant/types/FilterSet;

    return-object v0
.end method

.method public getInheritedProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 676
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getInheritedProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getInputHandler()Lorg/apache/tools/ant/input/InputHandler;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->inputHandler:Lorg/apache/tools/ant/input/InputHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 650
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 608
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 609
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 659
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getReference(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Unresolvable reference "

    .line 2051
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2053
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2055
    monitor-exit v1

    return-object v2

    .line 2057
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ant.PropertyHelper"

    .line 2059
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2061
    :try_start_1
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/PropertyHelper;->containsProperties(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " might be a misuse of property expansion syntax."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2057
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getReferences()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2009
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .locals 2

    .line 2485
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTargets()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->targets:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getTaskDefinitions()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1040
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ComponentHelper;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;
    .locals 2

    .line 2395
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    monitor-enter v0

    .line 2396
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Task;

    if-nez v1, :cond_0

    .line 2398
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    :goto_0
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 2400
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->threadGroupTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Task;

    .line 2401
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object p1

    goto :goto_0

    .line 2404
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 2405
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 667
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getUserProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getUserProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 640
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getUserProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hasReference(Ljava/lang/String;)Z
    .locals 2

    .line 2020
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->referencesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2021
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->references:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2022
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public inheritIDReferences(Lorg/apache/tools/ant/Project;)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->initProperties()V

    .line 306
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ComponentHelper;->initDefaultDefinitions()V

    return-void
.end method

.method public initProperties()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->setJavaVersionProperty()V

    .line 316
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->setSystemProperties()V

    const-string v0, "ant.version"

    .line 317
    invoke-static {}, Lorg/apache/tools/ant/Main;->getAntVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lorg/apache/tools/ant/Project;->setAntLib()V

    return-void
.end method

.method public initSubProject(Lorg/apache/tools/ant/Project;)V
    .locals 2

    .line 288
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 289
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->initSubProject(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 290
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDefaultInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setDefaultInputStream(Ljava/io/InputStream;)V

    .line 291
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setKeepGoingMode(Z)V

    .line 292
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getExecutor()Lorg/apache/tools/ant/Executor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/Executor;->getSubProjectExecutor()Lorg/apache/tools/ant/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setExecutor(Lorg/apache/tools/ant/Executor;)V

    return-void
.end method

.method public isKeepGoingMode()Z
    .locals 1

    .line 909
    iget-boolean v0, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 451
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 471
    invoke-virtual {p0, p0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public log(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 518
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Target;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public log(Lorg/apache/tools/ant/Task;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public log(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 493
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/Project;->fireMessageLogged(Lorg/apache/tools/ant/Task;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V
    .locals 2

    .line 2376
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 2378
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->threadGroupTasks:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2381
    :cond_0
    iget-object p2, p0, Lorg/apache/tools/ant/Project;->threadTasks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    iget-object p2, p0, Lorg/apache/tools/ant/Project;->threadGroupTasks:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeBuildListener(Lorg/apache/tools/ant/BuildListener;)V
    .locals 5

    .line 415
    iget-object v0, p0, Lorg/apache/tools/ant/Project;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 417
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 418
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_0

    .line 419
    iget-object p1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [Lorg/apache/tools/ant/BuildListener;

    .line 421
    iget-object v3, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    invoke-static {v3, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iget-object v1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    array-length v4, v4

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v3, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->listeners:[Lorg/apache/tools/ant/BuildListener;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replaceProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 627
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lorg/apache/tools/ant/PropertyHelper;->replaceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resolveFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1478
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public resolveFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1462
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public setBaseDir(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 856
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 857
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "Basedir "

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    const-string v0, "basedir"

    .line 866
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Project base dir set to: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/Project;->baseDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    .line 868
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-void

    .line 862
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a directory"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBasedir(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->setBaseDir(Ljava/io/File;)V

    return-void
.end method

.method public setCoreLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->coreLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "ant.project.default-target"

    .line 745
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->defaultTarget:Ljava/lang/String;

    return-void
.end method

.method public setDefaultInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->defaultInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setDefaultTarget(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 724
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->setDefault(Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->description:Ljava/lang/String;

    return-void
.end method

.method public setExecutor(Lorg/apache/tools/ant/Executor;)V
    .locals 1

    const-string v0, "ant.executor"

    .line 1216
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFileLastModified(Ljava/io/File;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1716
    sget-object v0, Lorg/apache/tools/ant/Project;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V

    .line 1717
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Setting modification time for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setInheritedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 583
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setInheritedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInputHandler(Lorg/apache/tools/ant/input/InputHandler;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->inputHandler:Lorg/apache/tools/ant/input/InputHandler;

    return-void
.end method

.method public setJavaVersionProperty()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 935
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ant.java.version"

    .line 936
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1.8"

    .line 939
    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detected Java version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.home"

    .line 943
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 942
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Detected OS: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-void

    .line 940
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Ant cannot work on Java prior to 1.8"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeepGoingMode(Z)V
    .locals 0

    .line 898
    iput-boolean p1, p0, Lorg/apache/tools/ant/Project;->keepGoingMode:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ant.project.name"

    .line 758
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iput-object p1, p0, Lorg/apache/tools/ant/Project;->name:Ljava/lang/String;

    return-void
.end method

.method public setNewProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 554
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setProjectReference(Ljava/lang/Object;)V
    .locals 5

    .line 2460
    instance-of v0, p1, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 2461
    check-cast p1, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/ProjectComponent;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void

    .line 2465
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setProject"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lorg/apache/tools/ant/Project;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2467
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 539
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z

    return-void
.end method

.method public setSystemProperties()V
    .locals 4

    .line 953
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 955
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 957
    invoke-direct {p0, v2, v3}, Lorg/apache/tools/ant/Project;->setPropertyInternal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 567
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setUserProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final topoSort(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;)",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1774
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/Project;->topoSort([Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public final topoSort(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;Z)",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1796
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->topoSort([Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public final topoSort([Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/util/Vector;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;Z)",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1818
    new-instance v8, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v8}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    .line 1819
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 1820
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 1830
    array-length v11, v7

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    const-string v13, "Unexpected node in visiting state: "

    const-string v14, "VISITING"

    if-ge v12, v11, :cond_2

    aget-object v1, v7, v12

    .line 1831
    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v4, v10

    move-object v5, v8

    .line 1833
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/Project;->tsort(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Stack;Ljava/util/Vector;)V

    goto :goto_1

    :cond_0
    if-eq v0, v14, :cond_1

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1835
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Build sequence for target(s)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1840
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/Project$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/Project$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 1841
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    .line 1839
    invoke-virtual {p0, v0, v7}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    if-eqz p3, :cond_3

    move-object v11, v8

    goto :goto_2

    .line 1844
    :cond_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v8}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    .line 1845
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1846
    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, p0

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    .line 1848
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/Project;->tsort(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Stack;Ljava/util/Vector;)V

    goto :goto_3

    :cond_4
    if-eq v0, v14, :cond_5

    goto :goto_3

    .line 1850
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1854
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Complete build sequence is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-object v8
.end method
