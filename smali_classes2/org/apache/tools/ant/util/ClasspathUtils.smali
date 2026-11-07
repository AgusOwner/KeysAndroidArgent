.class public Lorg/apache/tools/ant/util/ClasspathUtils;
.super Ljava/lang/Object;
.source "ClasspathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;
    }
.end annotation


# static fields
.field public static final REUSE_LOADER_REF:Ljava/lang/String; = "ant.reuse.loader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/Project;)Z
    .locals 0

    .line 73
    invoke-static {p0}, Lorg/apache/tools/ant/util/ClasspathUtils;->isMagicPropertySet(Lorg/apache/tools/ant/Project;)Z

    move-result p0

    return p0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;Z)Ljava/lang/ClassLoader;
    .locals 1

    .line 153
    invoke-static {p0}, Lorg/apache/tools/ant/util/ClasspathUtils;->isMagicPropertySet(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;ZZ)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;ZZ)Ljava/lang/ClassLoader;
    .locals 2

    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    .line 179
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    instance-of v1, v0, Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "The specified loader id %s does not reference a class loader"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 185
    :cond_1
    :goto_0
    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 188
    invoke-static {p0, p1, p3}, Lorg/apache/tools/ant/util/ClasspathUtils;->getUniqueClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    .line 190
    invoke-virtual {p0, p2, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Reference;)Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Reference;Z)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public static getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Reference;Z)Ljava/lang/ClassLoader;
    .locals 3

    .line 110
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    instance-of v1, v0, Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ant.loader."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    check-cast v0, Lorg/apache/tools/ant/types/Path;

    invoke-static {p0, v0, p1, p2}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p2, "The specified classpathref %s does not reference a Path."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static getDelegate(Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;
    .locals 1

    .line 287
    new-instance v0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    return-object v0
.end method

.method public static getUniqueClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Ljava/lang/ClassLoader;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V

    :cond_0
    return-object p0
.end method

.method private static isMagicPropertySet(Lorg/apache/tools/ant/Project;)Z
    .locals 1

    const-string v0, "ant.reuse.loader"

    .line 295
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .line 231
    const-class v0, Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Could not instantiate "

    const-string v1, "Abstract class "

    const/4 v2, 0x1

    .line 254
    :try_start_0
    invoke-static {p0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 258
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 259
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 260
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Class of unexpected Type: %s expected : %s"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 256
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 274
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " could not be loaded because of an invalid dependency."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 271
    :goto_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". Specified class should have a public constructor."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 268
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". Specified class should have a no argument constructor."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception p1

    .line 266
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
