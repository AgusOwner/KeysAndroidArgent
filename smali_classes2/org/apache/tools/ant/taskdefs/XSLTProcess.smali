.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "XSLTProcess.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/XSLTLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;,
        Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final PROCESSOR_TRAX:Ljava/lang/String; = "trax"


# instance fields
.field private baseDir:Ljava/io/File;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private destDir:Ljava/io/File;

.field private factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

.field private failOnError:Z

.field private failOnNoResources:Z

.field private failOnTransformationError:Z

.field private fileDirParameter:Ljava/lang/String;

.field private fileNameParameter:Ljava/lang/String;

.field private force:Z

.field private inFile:Ljava/io/File;

.field private liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private outFile:Ljava/io/File;

.field private final outputProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;",
            ">;"
        }
    .end annotation
.end field

.field private performDirectoryScan:Z

.field private processor:Ljava/lang/String;

.field private final resources:Lorg/apache/tools/ant/types/resources/Union;

.field private reuseLoadedStylesheet:Z

.field private stylesheetLoaded:Z

.field private suppressWarnings:Z

.field private final sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

.field private targetExtension:Ljava/lang/String;

.field private traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

.field private useImplicitFileset:Z

.field private final xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

.field private xpath:Ljavax/xml/xpath/XPath;

.field private xpathFactory:Ljavax/xml/xpath/XPathFactory;

.field private xslFile:Ljava/lang/String;

.field private xslResource:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    .line 88
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 91
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslResource:Lorg/apache/tools/ant/types/Resource;

    const-string v1, ".html"

    .line 97
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->targetExtension:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileNameParameter:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileDirParameter:Ljava/lang/String;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->params:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    .line 112
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outFile:Ljava/io/File;

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 129
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->force:Z

    .line 132
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outputProperties:Ljava/util/List;

    .line 135
    new-instance v2, Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/XMLCatalog;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    const/4 v2, 0x1

    .line 142
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->performDirectoryScan:Z

    .line 148
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    .line 154
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->reuseLoadedStylesheet:Z

    .line 166
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 173
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 180
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 187
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->useImplicitFileset:Z

    .line 194
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->suppressWarnings:Z

    .line 201
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnTransformationError:Z

    .line 208
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    .line 216
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnNoResources:Z

    .line 236
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->targetExtension:Ljava/lang/String;

    return-object p0
.end method

.method private checkDest()V
    .locals 1

    .line 767
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "destdir attributes must be set!"

    .line 768
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ensureDirectoryFor(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 895
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 896
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 897
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private evaluateParam(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 1323
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1324
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getExpression()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid XSLT parameter type: "

    if-eqz v0, :cond_1

    .line 1328
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1332
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1329
    :cond_1
    :goto_0
    sget-object v2, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1338
    :goto_1
    sget-object v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$1;->$SwitchMap$org$apache$tools$ant$taskdefs$XSLTProcess$ParamType:[I

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    .line 1350
    sget-object v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_TYPES:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/namespace/QName;

    if-eqz v2, :cond_2

    .line 1354
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p1

    const/4 v0, 0x0

    .line 1356
    invoke-interface {p1, v0, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1352
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1348
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1346
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1344
    :cond_5
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1342
    :cond_6
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method private loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 722
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setupLoader()V

    .line 723
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-nez v0, :cond_0

    .line 724
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 726
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private process(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, " time: "

    const-string v1, "Skipping input file "

    const-string v2, "Processing "

    const-string v3, "Style file "

    const-string v4, "Out file "

    const-string v5, "In file "

    const/4 v6, 0x2

    .line 864
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v7

    .line 865
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x4

    invoke-virtual {p0, v5, v9}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 866
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v9}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 867
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 868
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->force:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v0, v3, v10

    if-gez v0, :cond_1

    .line 869
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v0, v7, v3

    if-ltz v0, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because it is older than output file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and so is the stylesheet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v9}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 870
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->ensureDirectoryFor(Ljava/io/File;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 872
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->configureLiaison(Lorg/apache/tools/ant/types/Resource;)V

    .line 873
    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-direct {p0, p3, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setLiaisonDynamicFileParameters(Lorg/apache/tools/ant/taskdefs/XSLTLiaison;Ljava/io/File;)V

    .line 874
    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-interface {p3, p1, p2}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->transform(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    if-eqz p2, :cond_2

    .line 882
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 884
    :cond_2
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleTransformationError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Processing "

    const/4 v1, 0x0

    .line 813
    :try_start_0
    invoke-virtual {p4}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    .line 814
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 816
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x3

    const-string v6, "Skipping "

    if-eqz p1, :cond_0

    .line 817
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " it is a directory."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    return-void

    .line 820
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez p1, :cond_1

    new-instance p1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;

    invoke-direct {p1, p0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$StyleMapper;-><init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;Lorg/apache/tools/ant/taskdefs/XSLTProcess$1;)V

    goto :goto_0

    .line 821
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object p1

    .line 823
    :goto_0
    invoke-interface {p1, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 824
    array-length p2, p1

    if-nez p2, :cond_2

    goto :goto_1

    .line 828
    :cond_2
    array-length p2, p1

    const/4 v7, 0x1

    if-le p2, v7, :cond_3

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " its mapping is ambiguous."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    return-void

    .line 832
    :cond_3
    new-instance p2, Ljava/io/File;

    const/4 v5, 0x0

    aget-object p1, p1, v5

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 834
    :try_start_2
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->force:Z

    if-nez p1, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-gtz p1, :cond_4

    .line 835
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long p1, v2, v5

    if-lez p1, :cond_7

    .line 836
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->ensureDirectoryFor(Ljava/io/File;)V

    .line 837
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0, p4}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->configureLiaison(Lorg/apache/tools/ant/types/Resource;)V

    .line 839
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-direct {p0, p1, v4}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setLiaisonDynamicFileParameters(Lorg/apache/tools/ant/taskdefs/XSLTLiaison;Ljava/io/File;)V

    .line 840
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-interface {p1, v4, p2}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->transform(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p2

    goto :goto_2

    .line 825
    :cond_5
    :goto_1
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " it cannot get mapped to output."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 845
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to process "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    if-eqz v1, :cond_6

    .line 847
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 849
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleTransformationError(Ljava/lang/Exception;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private processResources(Lorg/apache/tools/ant/types/Resource;)V
    .locals 5

    .line 779
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 780
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 784
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    .line 785
    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v1, :cond_1

    .line 787
    invoke-static {v1}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 790
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 793
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    invoke-direct {p0, v2, v3, v1, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resolveProcessor(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "trax"

    .line 704
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    new-instance p1, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;

    invoke-direct {p1}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    goto :goto_0

    .line 708
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 709
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    :goto_0
    return-void
.end method

.method private setLiaisonDynamicFileParameters(Lorg/apache/tools/ant/taskdefs/XSLTLiaison;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileNameParameter:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1373
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileDirParameter:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1376
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    invoke-static {v0, p2}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 1377
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1380
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileDirParameter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "."

    :goto_0
    invoke-interface {p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setupLoader()V
    .locals 2

    .line 735
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-nez v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 737
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->setThreadContextLoader()V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 324
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 325
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 326
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->addMapper(Lorg/apache/tools/ant/types/Mapper;)V

    return-void
.end method

.method public addConfiguredStyle(Lorg/apache/tools/ant/types/resources/Resources;)V
    .locals 2

    .line 300
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/Resources;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, "The style element must be specified with exactly one nested resource."

    .line 301
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setXslResource(Lorg/apache/tools/ant/types/Resource;)V

    :goto_0
    return-void
.end method

.method public addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V

    return-void
.end method

.method public addMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_0

    const-string p1, "Cannot define more than one mapper"

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    :goto_0
    return-void
.end method

.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    return-void
.end method

.method public addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    return-void
.end method

.method protected configureLiaison(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1245
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>()V

    .line 1246
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1247
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->setFile(Ljava/io/File;)V

    .line 1248
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->configureLiaison(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method

.method protected configureLiaison(Lorg/apache/tools/ant/types/Resource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Loading stylesheet "

    .line 1259
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->reuseLoadedStylesheet:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1262
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    const/4 v2, 0x2

    .line 1265
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1268
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    instance-of v3, v0, Lorg/apache/tools/ant/taskdefs/XSLTLiaison2;

    if-eqz v3, :cond_1

    .line 1269
    check-cast v0, Lorg/apache/tools/ant/taskdefs/XSLTLiaison2;

    invoke-interface {v0, p0}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison2;->configure(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V

    .line 1271
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    instance-of v3, v0, Lorg/apache/tools/ant/taskdefs/XSLTLiaison3;

    if-eqz v3, :cond_2

    .line 1274
    check-cast v0, Lorg/apache/tools/ant/taskdefs/XSLTLiaison3;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison3;->setStylesheet(Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_0

    .line 1279
    :cond_2
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 1280
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v0, :cond_7

    .line 1282
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->setStylesheet(Ljava/io/File;)V

    .line 1289
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;

    .line 1290
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->shouldUse()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1291
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->evaluateParam(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;)Ljava/lang/Object;

    move-result-object v4

    .line 1292
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    instance-of v6, v5, Lorg/apache/tools/ant/taskdefs/XSLTLiaison4;

    if-eqz v6, :cond_4

    .line 1293
    check-cast v5, Lorg/apache/tools/ant/taskdefs/XSLTLiaison4;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison4;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    .line 1295
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_5

    goto :goto_2

    .line 1298
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XSLTLiaison \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' supports only String parameters. Converting parameter \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1299
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to its String value \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1298
    invoke-virtual {p0, v5, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1301
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1296
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Lorg/apache/tools/ant/taskdefs/XSLTLiaison;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1284
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accepts the stylesheet only as a file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to transform using stylesheet "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 1307
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleTransformationError(Ljava/lang/Exception;)V

    :cond_8
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createFactory()Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    if-eqz v0, :cond_0

    const-string v0, "\'factory\' element must be unique"

    .line 1392
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    goto :goto_0

    .line 1394
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    .line 1396
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    return-object v0
.end method

.method public createOutputProperty()Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;
    .locals 2

    .line 1170
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;-><init>()V

    .line 1171
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outputProperties:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createParam()Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;
    .locals 2

    .line 961
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Param;-><init>()V

    .line 962
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createTrace()Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;
    .locals 2

    .line 678
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;-><init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    return-object v0

    .line 679
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t have more than one trace configuration"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Transforming into "

    const-string v1, "stylesheet "

    const-string v2, "Using "

    const-string v3, "style"

    .line 337
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getTaskType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Warning: the task name <style> is deprecated. Use <xslt> instead."

    const/4 v4, 0x1

    .line 338
    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 341
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 346
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslResource:Lorg/apache/tools/ant/types/Resource;

    if-nez v4, :cond_1

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v0, "specify the stylesheet either as a filename in style attribute or as a nested resource"

    .line 347
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v4, :cond_2

    .line 350
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v0, "specify the stylesheet either as a filename in style attribute or as a nested resource but not as both"

    .line 351
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    return-void

    .line 354
    :cond_2
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "input file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 359
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->setupLoader()V

    .line 361
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 362
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->setSystem()V

    .line 366
    :cond_4
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    if-nez v6, :cond_5

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 369
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getLiaison()Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 372
    instance-of v7, v6, Lorg/apache/tools/ant/taskdefs/XSLTLoggerAware;

    if-eqz v7, :cond_6

    .line 373
    check-cast v6, Lorg/apache/tools/ant/taskdefs/XSLTLoggerAware;

    invoke-interface {v6, p0}, Lorg/apache/tools/ant/taskdefs/XSLTLoggerAware;->setLogger(Lorg/apache/tools/ant/taskdefs/XSLTLogger;)V

    .line 375
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-virtual {p0, v2, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 377
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 380
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    .line 382
    sget-object v6, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 387
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v2, "DEPRECATED - the \'style\' attribute should be relative to the project\'s"

    .line 388
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;)V

    const-string v2, "             basedir, not the tasks\'s basedir."

    .line 389
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;)V

    move-object v2, v6

    .line 393
    :cond_7
    new-instance v6, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v6}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>()V

    .line 394
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 395
    invoke-virtual {v6, v2}, Lorg/apache/tools/ant/types/resources/FileResource;->setFile(Ljava/io/File;)V

    goto :goto_0

    .line 398
    :cond_8
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslResource:Lorg/apache/tools/ant/types/Resource;

    .line 401
    :goto_0
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_9

    .line 451
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 453
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 455
    :cond_9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 456
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 458
    :cond_a
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 459
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 460
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    return-void

    .line 407
    :cond_b
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outFile:Ljava/io/File;

    if-eqz v2, :cond_e

    .line 408
    invoke-direct {p0, v1, v2, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->process(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_c

    .line 451
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 453
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 455
    :cond_c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 456
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 458
    :cond_d
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 459
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 460
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    return-void

    .line 417
    :cond_e
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->checkDest()V

    .line 420
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->useImplicitFileset:Z

    if-eqz v1, :cond_11

    .line 421
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 425
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v7, v4

    :goto_1
    if-ge v7, v2, :cond_f

    aget-object v8, v0, v7

    .line 426
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    invoke-direct {p0, v9, v8, v10, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 428
    :cond_f
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->performDirectoryScan:Z

    if-eqz v0, :cond_15

    .line 430
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_15

    aget-object v7, v0, v2

    .line 431
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 433
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_10

    aget-object v11, v8, v10

    .line 434
    iget-object v12, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    invoke-direct {p0, v12, v11, v13, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/Resource;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 441
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 443
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnNoResources:Z

    if-eqz v0, :cond_12

    const-string v0, "no resources specified"

    .line 444
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_13

    .line 451
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 453
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 455
    :cond_13
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 456
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 458
    :cond_14
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 459
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 460
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    return-void

    .line 448
    :cond_15
    :try_start_3
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->processResources(Lorg/apache/tools/ant/types/Resource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_16

    .line 451
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 453
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 455
    :cond_16
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 456
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 458
    :cond_17
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 459
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 460
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    return-void

    :catchall_0
    move-exception v0

    .line 450
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_18

    .line 451
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 452
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 453
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 455
    :cond_18
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 456
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 458
    :cond_19
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    .line 459
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->stylesheetLoaded:Z

    .line 460
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    .line 461
    throw v0
.end method

.method public getFactory()Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
    .locals 1

    .line 908
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->factory:Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    return-object v0
.end method

.method protected getLiaison()Lorg/apache/tools/ant/taskdefs/XSLTLiaison;
    .locals 3

    .line 936
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    if-nez v0, :cond_1

    .line 937
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->processor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 939
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resolveProcessor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 941
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "trax"

    .line 945
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->resolveProcessor(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 947
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    .line 948
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->handleError(Ljava/lang/Throwable;)V

    .line 952
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->liaison:Lorg/apache/tools/ant/taskdefs/XSLTLiaison;

    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;",
            ">;"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outputProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressWarnings()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->suppressWarnings:Z

    return v0
.end method

.method public getTraceConfiguration()Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;
    .locals 1

    .line 692
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    return-object v0
.end method

.method public getXMLCatalog()Lorg/apache/tools/ant/types/XMLCatalog;
    .locals 2

    .line 917
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 918
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    return-object v0
.end method

.method protected handleError(Ljava/lang/String;)V
    .locals 2

    .line 1407
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1410
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    return-void

    .line 1408
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected handleError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1423
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    if-nez v0, :cond_0

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caught an exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    return-void

    .line 1424
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected handleTransformationError(Ljava/lang/Exception;)V
    .locals 2

    .line 1438
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnTransformationError:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1439
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1441
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caught an error during transformation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1227
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->init()V

    .line 1228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1230
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xpathFactory:Ljavax/xml/xpath/XPathFactory;

    .line 1231
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xpath:Ljavax/xml/xpath/XPath;

    .line 1232
    new-instance v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V

    return-void
.end method

.method synthetic lambda$init$0$org-apache-tools-ant-taskdefs-XSLTProcess(Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1

    .line 1233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBasedir(Ljava/io/File;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 520
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 542
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->destDir:Ljava/io/File;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->targetExtension:Ljava/lang/String;

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 634
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnError:Z

    return-void
.end method

.method public setFailOnNoResources(Z)V
    .locals 0

    .line 644
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnNoResources:Z

    return-void
.end method

.method public setFailOnTransformationError(Z)V
    .locals 0

    .line 624
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->failOnTransformationError:Z

    return-void
.end method

.method public setFileDirParameter(Ljava/lang/String;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileDirParameter:Ljava/lang/String;

    return-void
.end method

.method public setFileNameParameter(Ljava/lang/String;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->fileNameParameter:Ljava/lang/String;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->force:Z

    return-void
.end method

.method public setIn(Ljava/io/File;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->inFile:Ljava/io/File;

    return-void
.end method

.method public setOut(Ljava/io/File;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->outFile:Ljava/io/File;

    return-void
.end method

.method public setProcessor(Ljava/lang/String;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->processor:Ljava/lang/String;

    return-void
.end method

.method public setReloadStylesheet(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 266
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->reuseLoadedStylesheet:Z

    return-void
.end method

.method public setScanIncludedDirectories(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->performDirectoryScan:Z

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslFile:Ljava/lang/String;

    return-void
.end method

.method public setSuppressWarnings(Z)V
    .locals 0

    .line 604
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->suppressWarnings:Z

    return-void
.end method

.method public setUseImplicitFileset(Z)V
    .locals 0

    .line 563
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->useImplicitFileset:Z

    return-void
.end method

.method public setXslResource(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->xslResource:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method
