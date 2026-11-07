.class public Lorg/apache/tools/ant/taskdefs/modules/Jmod;
.super Lorg/apache/tools/ant/Task;
.source "Jmod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;,
        Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;
    }
.end annotation


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private commandPath:Lorg/apache/tools/ant/types/Path;

.field private configPath:Lorg/apache/tools/ant/types/Path;

.field private hashModulesPattern:Ljava/lang/String;

.field private headerPath:Lorg/apache/tools/ant/types/Path;

.field private jmodFile:Ljava/io/File;

.field private legalPath:Lorg/apache/tools/ant/types/Path;

.field private mainClass:Ljava/lang/String;

.field private manPath:Lorg/apache/tools/ant/types/Path;

.field private modulePath:Lorg/apache/tools/ant/types/Path;

.field private moduleVersion:Lorg/apache/tools/ant/types/ModuleVersion;

.field private final moduleWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;",
            ">;"
        }
    .end annotation
.end field

.field private nativeLibPath:Lorg/apache/tools/ant/types/Path;

.field private platform:Ljava/lang/String;

.field private resolveByDefault:Z

.field private version:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Z4u3EQeCzEvigdBM6ndgD4qA4xI(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->isRegularFile(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->resolveByDefault:Z

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->moduleWarnings:Ljava/util/List;

    return-void
.end method

.method private buildJmodArgs()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "create"

    .line 1209
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v1, "--class-path"

    .line 1211
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1212
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1216
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "--module-path"

    .line 1217
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1220
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "--cmds"

    .line 1221
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1222
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "--config"

    .line 1225
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1226
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "--header-files"

    .line 1229
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1230
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "--legal-notices"

    .line 1233
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1234
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "--libs"

    .line 1237
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1238
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "--man-pages"

    .line 1241
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1242
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1248
    :cond_6
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->moduleVersion:Lorg/apache/tools/ant/types/ModuleVersion;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ModuleVersion;->toModuleVersionString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->version:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_8

    .line 1249
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "--module-version"

    .line 1250
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1251
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_8
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->mainClass:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "--main-class"

    .line 1255
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->mainClass:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1258
    :cond_9
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->platform:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "--target-platform"

    .line 1259
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->platform:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->hashModulesPattern:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "--hash-modules"

    .line 1263
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1264
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->hashModulesPattern:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1269
    :cond_b
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->resolveByDefault:Z

    if-nez v1, :cond_c

    const-string v1, "--do-not-resolve-by-default"

    .line 1270
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1272
    :cond_c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->moduleWarnings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;

    .line 1273
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->validate()V

    const-string v3, "--warn-if-resolved"

    .line 1274
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;->getReason()Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;->toCommandLineOption()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1280
    :cond_d
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private checkDirPaths()V
    .locals 3

    .line 1016
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1

    .line 1017
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ModulePath must contain only directories."

    .line 1020
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1022
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_3

    .line 1023
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1025
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "CommandPath must contain only directories."

    .line 1026
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1028
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_5

    .line 1029
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 1031
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ConfigPath must contain only directories."

    .line 1032
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1034
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_7

    .line 1035
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 1037
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "HeaderPath must contain only directories."

    .line 1038
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1040
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_9

    .line 1041
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 1043
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "LegalPath must contain only directories."

    .line 1044
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1046
    :cond_9
    :goto_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_b

    .line 1047
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 1049
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "NativeLibPath must contain only directories."

    .line 1050
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1052
    :cond_b
    :goto_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_d

    .line 1053
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    .line 1055
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ManPath must contain only directories."

    .line 1056
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_d
    :goto_6
    return-void
.end method

.method private static isRegularFile(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createCommandPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 395
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createConfigPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 448
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    .line 451
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createHeaderPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 502
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createLegalPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createManPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 658
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModulePath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModuleWarning()Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;
    .locals 2

    .line 847
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Jmod;)V

    .line 848
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->moduleWarnings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createNativeLibPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 606
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createVersion()Lorg/apache/tools/ant/types/ModuleVersion;
    .locals 3

    .line 713
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->moduleVersion:Lorg/apache/tools/ant/types/ModuleVersion;

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Lorg/apache/tools/ant/types/ModuleVersion;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ModuleVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->moduleVersion:Lorg/apache/tools/ant/types/ModuleVersion;

    return-object v0

    .line 714
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No more than one <moduleVersion> element is allowed."

    .line 716
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public execute()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 1082
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_c

    .line 1087
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1093
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->moduleVersion:Lorg/apache/tools/ant/types/ModuleVersion;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "version attribute and nested <version> element cannot both be present."

    .line 1097
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1100
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->hashModulesPattern:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1103
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "hashModulesPattern requires a module path, since it will generate hashes of the other modules which depend on the module being created."

    .line 1107
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1110
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->checkDirPaths()V

    const/16 v0, 0x8

    new-array v1, v0, [Lorg/apache/tools/ant/types/Path;

    .line 1112
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/4 v2, 0x4

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    aput-object v6, v1, v2

    const/4 v2, 0x5

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    aput-object v6, v1, v2

    const/4 v2, 0x6

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    aput-object v6, v1, v2

    const/4 v2, 0x7

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    aput-object v6, v1, v2

    .line 1122
    new-instance v8, Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/apache/tools/ant/types/resources/Union;-><init>(Lorg/apache/tools/ant/Project;)V

    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_6

    .line 1123
    aget-object v6, v1, v2

    if-eqz v6, :cond_5

    .line 1125
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v9, v3

    :goto_3
    if-ge v9, v7, :cond_5

    aget-object v10, v6, v9

    .line 1126
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v10

    const-string v12, "\" with timestamp of "

    if-eqz v10, :cond_4

    .line 1128
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "Will compare timestamp of all files in \""

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v5}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->log(Ljava/lang/String;I)V

    .line 1131
    new-instance v10, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v10}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 1132
    invoke-virtual {v10, v11}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 1133
    invoke-virtual {v8, v10}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_4

    .line 1135
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "Will compare timestamp of \""

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v5}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->log(Ljava/lang/String;I)V

    .line 1138
    new-instance v10, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v10, v11}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v10}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1144
    :cond_6
    new-instance v9, Lorg/apache/tools/ant/util/MergingMapper;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    .line 1146
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/apache/tools/ant/util/MergingMapper;-><init>(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v10

    .line 1148
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v11

    move-object v7, p0

    .line 1145
    invoke-static/range {v7 .. v12}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    .line 1150
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping jmod creation, since \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is already newer than all files in paths."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->log(Ljava/lang/String;I)V

    return-void

    .line 1157
    :cond_7
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->buildJmodArgs()Ljava/util/Collection;

    move-result-object v0

    .line 1160
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " if it exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->log(Ljava/lang/String;I)V

    .line 1161
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "jmod"

    .line 1168
    invoke-static {v1}, Ljava/util/spi/ToolProvider;->findFirst(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Jmod;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/spi/ToolProvider;

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Executing: jmod "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-static {v6, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->log(Ljava/lang/String;I)V

    .line 1174
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1175
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1178
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1179
    :try_start_1
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v3, v3, [Ljava/lang/String;

    .line 1181
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v6, v7, v0}, Ljava/util/spi/ToolProvider;->run(Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1182
    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    if-eqz v0, :cond_a

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "jmod failed (exit code "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, ", output is: "

    .line 1188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1190
    :cond_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, ", error output is: "

    .line 1191
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1197
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->log(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 1178
    :try_start_4
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v0

    :catch_0
    move-exception v0

    .line 1163
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not remove old file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1088
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Classpath must contain at least one entry which exists."

    .line 1090
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1083
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Classpath is required."

    .line 1084
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1078
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destination file is required."

    .line 1079
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCommandPath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getConfigPath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getDestFile()Ljava/io/File;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    return-object v0
.end method

.method public getHashModulesPattern()Ljava/lang/String;
    .locals 1

    .line 803
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->hashModulesPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderPath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getLegalPath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 568
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getMainClass()Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->mainClass:Ljava/lang/String;

    return-object v0
.end method

.method public getManPath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 673
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getModulePath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getNativeLibPath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 775
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveByDefault()Z
    .locals 1

    .line 825
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->resolveByDefault:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 730
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->version:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$execute$0$org-apache-tools-ant-taskdefs-modules-Jmod()Lorg/apache/tools/ant/BuildException;
    .locals 3

    .line 1169
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "jmod tool not found in JDK."

    .line 1170
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    return-object v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 312
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 325
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setCommandPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 423
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->commandPath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setCommandPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 436
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->createCommandPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setConfigPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 476
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->configPath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setConfigPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 489
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->createConfigPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setDestFile(Ljava/io/File;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->jmodFile:Ljava/io/File;

    return-void
.end method

.method public setHashModulesPattern(Ljava/lang/String;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->hashModulesPattern:Ljava/lang/String;

    return-void
.end method

.method public setHeaderPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 530
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->headerPath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setHeaderPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 543
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->createHeaderPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setLegalPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 581
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->legalPath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setLegalPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 594
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->createLegalPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setMainClass(Ljava/lang/String;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->mainClass:Ljava/lang/String;

    return-void
.end method

.method public setManPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 688
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->manPath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 690
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setManPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 701
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->createManPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setModulePath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 370
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->modulePath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setModulePathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 383
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->createModulePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setModuleWarnings(Ljava/lang/String;)V
    .locals 5

    const-string v0, ","

    .line 864
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 865
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->moduleWarnings:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;

    invoke-direct {v4, p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Jmod;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNativeLibPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 632
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->nativeLibPath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setNativeLibPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 645
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->createNativeLibPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->platform:Ljava/lang/String;

    return-void
.end method

.method public setResolveByDefault(Z)V
    .locals 0

    .line 835
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->resolveByDefault:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->version:Ljava/lang/String;

    return-void
.end method
