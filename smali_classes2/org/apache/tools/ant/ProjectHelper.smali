.class public Lorg/apache/tools/ant/ProjectHelper;
.super Ljava/lang/Object;
.source "ProjectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;
    }
.end annotation


# static fields
.field public static final ANTLIB_URI:Ljava/lang/String; = "antlib:"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANT_ATTRIBUTE_URI:Ljava/lang/String; = "ant:attribute"

.field public static final ANT_CORE_URI:Ljava/lang/String; = "antlib:org.apache.tools.ant"

.field public static final ANT_CURRENT_URI:Ljava/lang/String; = "ant:current"

.field public static final ANT_TYPE:Ljava/lang/String; = "ant-type"

.field public static final HELPER_PROPERTY:Ljava/lang/String; = "org.apache.tools.ant.ProjectHelper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROJECTHELPER_REFERENCE:Ljava/lang/String; = "ant.projectHelper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_ID:Ljava/lang/String; = "META-INF/services/org.apache.tools.ant.ProjectHelper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USE_PROJECT_NAME_AS_TARGET_PREFIX:Ljava/lang/String; = "USE_PROJECT_NAME_AS_TARGET_PREFIX"

.field private static final inIncludeMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final prefixSeparator:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final targetPrefix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extensionStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private importStack:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/ProjectHelper;->targetPrefix:Ljava/lang/ThreadLocal;

    .line 216
    new-instance v0, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticThreadLocal2;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticThreadLocal2;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/tools/ant/ProjectHelper;->prefixSeparator:Ljava/lang/ThreadLocal;

    .line 240
    new-instance v0, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticThreadLocal2;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/ProjectHelper$$ExternalSyntheticThreadLocal2;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/tools/ant/ProjectHelper;->inIncludeMode:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ProjectHelper;->importStack:Ljava/util/Vector;

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ProjectHelper;->extensionStack:Ljava/util/List;

    return-void
.end method

.method public static addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 566
    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The following error occurred while executing this line:%n%s%s"

    .line 570
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 572
    instance-of v1, p0, Lorg/apache/tools/ant/ExitStatusException;

    if-eqz v1, :cond_2

    .line 573
    check-cast p0, Lorg/apache/tools/ant/ExitStatusException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/ExitStatusException;->getStatus()I

    move-result p0

    if-nez p1, :cond_1

    .line 575
    new-instance p1, Lorg/apache/tools/ant/ExitStatusException;

    invoke-direct {p1, v0, p0}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 577
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/ExitStatusException;

    invoke-direct {v1, v0, p0, p1}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;ILorg/apache/tools/ant/Location;)V

    return-object v1

    :cond_2
    if-nez p1, :cond_3

    .line 580
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    .line 582
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    return-object v1

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 394
    :cond_0
    instance-of v0, p1, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v0, :cond_1

    .line 395
    check-cast p1, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {p1}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object p1

    .line 397
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;[CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/ProjectHelper;->addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static configure(Ljava/lang/Object;Lorg/xml/sax/AttributeList;Lorg/apache/tools/ant/Project;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    instance-of v0, p0, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v0, :cond_0

    .line 338
    check-cast p0, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {p0}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object p0

    .line 340
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v0

    .line 342
    invoke-interface {p1}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 344
    invoke-interface {p1, v2}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lorg/apache/tools/ant/ProjectHelper;->replaceProperties(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v3

    .line 346
    :try_start_0
    invoke-interface {p1, v2}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, p0, v4, v3}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 349
    invoke-interface {p1, v2}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_1
    throw v3

    :cond_2
    return-void
.end method

.method public static configureProject(Lorg/apache/tools/ant/Project;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 102
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getProjectHelperForBuildFile(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/ProjectHelper;

    move-result-object v0

    const-string v1, "ant.projectHelper"

    .line 103
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0, p0, p1}, Lorg/apache/tools/ant/ProjectHelper;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V

    return-void
.end method

.method public static extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 538
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 542
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3a

    .line 524
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 528
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 508
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "antlib:org.apache.tools.ant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->isContextLoaderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getCurrentPrefixSeparator()Ljava/lang/String;
    .locals 1

    .line 227
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->prefixSeparator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentTargetPrefix()Ljava/lang/String;
    .locals 1

    .line 203
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->targetPrefix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getProjectHelper()Lorg/apache/tools/ant/ProjectHelper;
    .locals 1

    .line 299
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelpers()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    return-object v0
.end method

.method public static isInIncludeMode()Z
    .locals 2

    .line 259
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lorg/apache/tools/ant/ProjectHelper;->inIncludeMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    const-string v0, "."

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/lang/Boolean;
    .locals 1

    .line 240
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static nsToComponentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attribute namespace:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parsePropertyString(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->parsePropertyStringDefault(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method

.method public static replaceProperties(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceProperties(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 467
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object p0

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->replaceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCurrentPrefixSeparator(Ljava/lang/String;)V
    .locals 1

    .line 237
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->prefixSeparator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setCurrentTargetPrefix(Ljava/lang/String;)V
    .locals 1

    .line 213
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->targetPrefix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setInIncludeMode(Z)V
    .locals 1

    .line 270
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper;->inIncludeMode:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static storeChild(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v0

    .line 415
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->storeElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canParseAntlibDescriptor(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canParseBuildFile(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getDefaultBuildFile()Ljava/lang/String;
    .locals 1

    const-string v0, "build.xml"

    return-object v0
.end method

.method public getExtensionStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelper;->extensionStack:Ljava/util/List;

    return-object v0
.end method

.method public getImportStack()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelper;->importStack:Ljava/util/Vector;

    return-object v0
.end method

.method public parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 288
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ProjectHelper.parse() must be implemented in a helper plugin "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseAntlibDescriptor(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/UnknownElement;
    .locals 0

    .line 620
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "can\'t parse antlib descriptors"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveExtensionOfAttributes(Lorg/apache/tools/ant/Project;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 668
    aget-object v2, v1, v2

    const/4 v3, 0x1

    .line 669
    aget-object v4, v1, v3

    const/4 v5, 0x2

    .line 670
    aget-object v5, v1, v5

    invoke-static {v5}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    move-result-object v5

    .line 674
    array-length v6, v1

    const/4 v7, 0x3

    if-le v6, v7, :cond_1

    aget-object v1, v1, v7

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 677
    :goto_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v6

    if-nez v1, :cond_2

    .line 681
    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Target;

    goto :goto_2

    .line 691
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Target;

    if-nez v1, :cond_3

    .line 693
    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Target;

    :cond_3
    :goto_2
    if-nez v1, :cond_5

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "can\'t add target "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " to extension-point "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the extension-point is unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    sget-object v2, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->FAIL:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    if-eq v5, v2, :cond_4

    .line 704
    sget-object v2, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->WARN:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    if-ne v5, v2, :cond_0

    .line 705
    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/Target;

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Warning: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1, v3}, Lorg/apache/tools/ant/Project;->log(Lorg/apache/tools/ant/Target;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 703
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 709
    :cond_5
    instance-of v3, v1, Lorg/apache/tools/ant/ExtensionPoint;

    if-eqz v3, :cond_6

    .line 713
    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/Target;->addDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "referenced target "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not an extension-point"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method
