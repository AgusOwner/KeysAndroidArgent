.class public Lorg/apache/tools/ant/types/Mapper$MapperType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Mapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Mapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapperType"
.end annotation


# instance fields
.field private implementations:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 289
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 290
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "identity"

    const-string v2, "org.apache.tools.ant.util.IdentityMapper"

    .line 291
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "flatten"

    const-string v2, "org.apache.tools.ant.util.FlatFileNameMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "glob"

    const-string v2, "org.apache.tools.ant.util.GlobPatternMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "merge"

    const-string v2, "org.apache.tools.ant.util.MergingMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "regexp"

    const-string v2, "org.apache.tools.ant.util.RegexpPatternMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "package"

    const-string v2, "org.apache.tools.ant.util.PackageNameMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "unpackage"

    const-string v2, "org.apache.tools.ant.util.UnPackageNameMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getImplementation()Ljava/lang/String;
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper$MapperType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 7

    const-string v0, "identity"

    const-string v1, "flatten"

    const-string v2, "glob"

    const-string v3, "merge"

    const-string v4, "regexp"

    const-string v5, "package"

    const-string v6, "unpackage"

    .line 312
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
