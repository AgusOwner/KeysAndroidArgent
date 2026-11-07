.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.super Ljava/lang/Object;
.source "GenericDeploymentTool.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;


# static fields
.field public static final ANALYZER_CLASS_FULL:Ljava/lang/String; = "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"

.field public static final ANALYZER_CLASS_SUPER:Ljava/lang/String; = "org.apache.tools.ant.util.depend.bcel.AncestorAnalyzer"

.field public static final ANALYZER_FULL:Ljava/lang/String; = "full"

.field public static final ANALYZER_NONE:Ljava/lang/String; = "none"

.field public static final ANALYZER_SUPER:Ljava/lang/String; = "super"

.field public static final DEFAULT_ANALYZER:Ljava/lang/String; = "super"

.field public static final DEFAULT_BUFFER_SIZE:I = 0x400

.field protected static final EJB_DD:Ljava/lang/String; = "ejb-jar.xml"

.field public static final JAR_COMPRESS_LEVEL:I = 0x9

.field protected static final MANIFEST:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field protected static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private addedfiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private classpathLoader:Ljava/lang/ClassLoader;

.field private config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

.field private dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

.field private destDir:Ljava/io/File;

.field private genericJarSuffix:Ljava/lang/String;

.field private handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

.field private task:Lorg/apache/tools/ant/Task;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-generic.jar"

    .line 104
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->genericJarSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private createAnalyzer()V
    .locals 8

    const-string v0, "Unable to load dependency analyzer: "

    .line 255
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->analyzer:Ljava/lang/String;

    const-string v2, "super"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "none"

    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 265
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v3, "full"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "org.apache.tools.ant.util.depend.bcel.AncestorAnalyzer"

    goto :goto_0

    :cond_3
    const-string v1, "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 279
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 280
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    .line 281
    new-instance v5, Lorg/apache/tools/ant/types/Path;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v6}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v7, v7, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    .line 282
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 281
    invoke-interface {v4, v5}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 283
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v5, v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-interface {v4, v5}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 290
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    .line 291
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {v3, v0, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    goto :goto_1

    :catch_1
    move-exception v4

    .line 285
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    .line 286
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - dependent class not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {v4}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v3, v0, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected addFileToJar(Ljava/util/jar/JarOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addedfiles:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipEntry;

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    .line 331
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, v2}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v2, 0x800

    new-array v3, v2, [B

    move v4, v1

    .line 339
    :cond_0
    invoke-virtual {p1, v3, v1, v4}, Ljava/util/jar/JarOutputStream;->write([BII)V

    .line 340
    invoke-virtual {v0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 344
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addedfiles:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 345
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 328
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WARNING: IOException while adding entry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " to jarfile from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 347
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 346
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected addSupportClasses(Ljava/util/Hashtable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->supportFileSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/FileSet;

    .line 524
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v3

    .line 525
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 526
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 527
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected checkAndAddDependants(Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    if-nez v0, :cond_0

    return-void

    .line 827
    :cond_0
    invoke-interface {v0}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->reset()V

    .line 829
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x2e

    const-string v3, ".class"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 832
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    const/4 v4, 0x0

    .line 831
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 833
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 834
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 836
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    invoke-interface {v2, v1}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addRootClass(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->dependencyAnalyzer:Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    invoke-interface {v0}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->getClassDependencies()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 842
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v6, v6, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 844
    invoke-virtual {p1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "dependent class: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected checkConfiguration(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    return-void
.end method

.method public configure(Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    .line 306
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->createAnalyzer()V

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getClassLoaderForBuild()Ljava/lang/ClassLoader;
    .locals 2

    .line 858
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    .line 861
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-nez v0, :cond_1

    .line 865
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 869
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    .line 871
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpathLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method protected getCombinedClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 225
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    return-object v0
.end method

.method protected getDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .locals 3

    .line 360
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;-><init>(Lorg/apache/tools/ant/Task;Ljava/io/File;)V

    .line 362
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->registerKnownDTDs(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V

    .line 365
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;

    .line 366
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getDestDir()Ljava/io/File;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->destDir:Ljava/io/File;

    return-object v0
.end method

.method protected getJarBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 547
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "basejarname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, ""

    if-eqz v0, :cond_1

    const/16 v0, 0x5c

    const/16 v4, 0x2f

    .line 548
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 551
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 553
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseJarName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 554
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "descriptor"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 555
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 558
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v3, v3, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 561
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eq v0, v2, :cond_3

    .line 565
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 567
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to determine jar name from descriptor \"%s\""

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 571
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "directory"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 572
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v3, v3, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 574
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 575
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 579
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 580
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 582
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v3, p1

    goto :goto_1

    .line 577
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Unable to determine directory name holding descriptor"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 585
    :cond_7
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ejb-name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 586
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getEjbName()Ljava/lang/String;

    move-result-object v3

    :cond_8
    :goto_1
    return-object v3
.end method

.method protected getLocation()Lorg/apache/tools/ant/Location;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    return-object v0
.end method

.method protected getManifestFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 696
    new-instance v0, Ljava/io/File;

    .line 697
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "manifest.mf"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 701
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->manifest:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 702
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->manifest:Ljava/io/File;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPublicId()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTask()Lorg/apache/tools/ant/Task;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    return-object v0
.end method

.method public getVendorDDPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 603
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p2, p2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 605
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "basejarname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 606
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ejb-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 607
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "directory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x5c

    const/16 v0, 0x2f

    .line 608
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 613
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 637
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->destDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->genericJarSuffix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected log(Ljava/lang/String;I)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    return-void
.end method

.method protected needToRebuild(Ljava/util/Hashtable;Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 656
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 657
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 661
    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 662
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 663
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Build needed because "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is out of date"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method protected parseEjbFiles(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/xml/parsers/SAXParser;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 506
    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 508
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {p2, v0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 509
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getFiles()Ljava/util/Hashtable;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 506
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public processDescriptor(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .locals 6

    const-string v0, "building "

    .line 386
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->checkConfiguration(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V

    .line 389
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    .line 392
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->parseEjbFiles(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)Ljava/util/Hashtable;

    move-result-object p2

    .line 395
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addSupportClasses(Ljava/util/Hashtable;)V

    .line 398
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getJarBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {p0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorDDPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getManifestFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "META-INF/MANIFEST.MF"

    .line 404
    invoke-virtual {p2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "META-INF/ejb-jar.xml"

    .line 408
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v5, v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {p0, p2, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->checkAndAddDependants(Ljava/util/Hashtable;)V

    .line 419
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-boolean v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->flatDestDir:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 420
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 425
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 426
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 429
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 432
    invoke-virtual {p0, p2, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->needToRebuild(Ljava/util/Hashtable;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " files"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    .line 434
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    .line 442
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {p0, v1, v2, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is up to date."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p2

    .line 456
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException while parsing\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'.  This probably indicates that the descriptor doesn\'t exist. Details: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 459
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    .line 450
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAXException while parsing \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'. This probably indicates badly-formed XML.  Details: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 453
    invoke-virtual {p2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected registerKnownDTDs(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V
    .locals 0

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->destDir:Ljava/io/File;

    return-void
.end method

.method public setGenericJarSuffix(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->genericJarSuffix:Ljava/lang/String;

    return-void
.end method

.method public setTask(Lorg/apache/tools/ant/Task;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->task:Lorg/apache/tools/ant/Task;

    return-void
.end method

.method protected usingBaseJarName()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseJarName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validateConfigured()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->destDir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 883
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A valid destination directory must be specified using the \"destdir\" attribute."

    .line 885
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string p1, "\'"

    const-string p4, "META-INF/MANIFEST.MF"

    .line 720
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addedfiles:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addedfiles:Ljava/util/Set;

    goto :goto_0

    .line 723
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 732
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 735
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 736
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 741
    :try_start_1
    invoke-virtual {p3, p4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 742
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 743
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "/org/apache/tools/ant/defaultManifest.mf"

    .line 746
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 753
    :goto_1
    new-instance v1, Ljava/util/jar/Manifest;

    invoke-direct {v1, v0}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_3

    .line 758
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 764
    :cond_3
    new-instance v0, Ljava/util/jar/JarOutputStream;

    .line 765
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v1, 0x8

    .line 766
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/util/jar/JarOutputStream;->setMethod(I)V

    .line 769
    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 770
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 771
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 774
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    .line 776
    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addFileToJar(Ljava/util/jar/JarOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 779
    new-instance v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/InnerClassFilenameFilter;

    .line 780
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/InnerClassFilenameFilter;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 782
    invoke-virtual {v6, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 784
    array-length v6, v4

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    .line 787
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_6

    move-object v3, v8

    goto :goto_4

    .line 791
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 795
    :goto_4
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v8, v8, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    invoke-direct {v1, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding innerclass file \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->log(Ljava/lang/String;I)V

    .line 800
    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->addFileToJar(Ljava/util/jar/JarOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 804
    :cond_7
    :try_start_4
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catchall_0
    move-exception p1

    .line 764
    :try_start_5
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p3

    :try_start_6
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 748
    :cond_8
    :try_start_7
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p3, "Could not find default manifest: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p1, p3, p4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 755
    :try_start_8
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    const-string p4, "Unable to read manifest"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p3, p4, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_6
    if-eqz v0, :cond_9

    .line 758
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 760
    :cond_9
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p1

    .line 806
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "IOException while processing ejb-jar file \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\'. Details: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 809
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 810
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p3, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
