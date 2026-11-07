.class public Lorg/apache/tools/ant/taskdefs/modules/Link;
.super Lorg/apache/tools/ant/Task;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCHER_STRING:Ljava/lang/String; = "Launcher command must take the form name=module or name=module/mainclass"


# instance fields
.field private bindServices:Z

.field private checkDuplicateLegal:Z

.field private compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

.field private compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

.field private debug:Z

.field private endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

.field private final excludedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final excludedResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreSigning:Z

.field private includeHeaders:Z

.field private includeManPages:Z

.field private includeNativeCommands:Z

.field private final launchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;",
            ">;"
        }
    .end annotation
.end field

.field private modulePath:Lorg/apache/tools/ant/types/Path;

.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final observableModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final ordering:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private outputDir:Ljava/io/File;

.field private final releaseInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

.field private vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeHeaders:Z

    .line 294
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeManPages:Z

    .line 297
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeNativeCommands:Z

    .line 300
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->debug:Z

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->releaseInfo:Ljava/util/List;

    return-void
.end method

.method private buildJlinkArgs()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "--output"

    .line 2027
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2028
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v1, "--module-path"

    .line 2030
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2031
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v1, "--add-modules"

    .line 2033
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2034
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 2035
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 2034
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2037
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "--limit-modules"

    .line 2038
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2039
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 2040
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 2039
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2043
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2044
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "--include-locales="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    .line 2045
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 2046
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 2045
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2044
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2049
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;

    const-string v4, "--launcher"

    .line 2050
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2051
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2054
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2055
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "--order-resources="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    .line 2056
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 2057
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 2056
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2055
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2059
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2060
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "--exclude-files="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    .line 2061
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 2062
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 2061
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2060
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2064
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2065
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "--exclude-resources="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    .line 2066
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 2067
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 2066
    invoke-interface {v3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2065
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2070
    :cond_5
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->bindServices:Z

    if-eqz v1, :cond_6

    const-string v1, "--bind-services"

    .line 2071
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2073
    :cond_6
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ignoreSigning:Z

    if-eqz v1, :cond_7

    const-string v1, "--ignore-signing-information"

    .line 2074
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2076
    :cond_7
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeHeaders:Z

    if-nez v1, :cond_8

    const-string v1, "--no-header-files"

    .line 2077
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2079
    :cond_8
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeManPages:Z

    if-nez v1, :cond_9

    const-string v1, "--no-man-pages"

    .line 2080
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2082
    :cond_9
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeNativeCommands:Z

    if-nez v1, :cond_a

    const-string v1, "--strip-native-commands"

    .line 2083
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2085
    :cond_a
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->debug:Z

    if-nez v1, :cond_b

    const-string v1, "--strip-debug"

    .line 2086
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2088
    :cond_b
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

    if-eqz v1, :cond_c

    const-string v1, "--verbose"

    .line 2089
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2092
    :cond_c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

    if-eqz v1, :cond_d

    const-string v1, "--endian"

    .line 2093
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2094
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2097
    :cond_d
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    const-string v2, "--compress="

    if-eqz v1, :cond_f

    .line 2098
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    if-nez v1, :cond_e

    .line 2103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;->toCommandLineOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2099
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "compressionLevel attribute and <compression> child element cannot both be present."

    .line 2101
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 2105
    :cond_f
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    if-eqz v1, :cond_10

    .line 2106
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->validate()V

    .line 2107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->toCommandLineOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2109
    :cond_10
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;

    if-eqz v1, :cond_11

    .line 2110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--vm="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2112
    :cond_11
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->checkDuplicateLegal:Z

    if-eqz v1, :cond_12

    const-string v1, "--dedup-legal-notices=error-if-not-same-content"

    .line 2113
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2115
    :cond_12
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->releaseInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;

    .line 2116
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->validate()V

    .line 2117
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->toCommandLineOptions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_13
    return-object v0
.end method

.method private deleteTree(Ljava/nio/file/Path;)V
    .locals 4

    .line 1990
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$1;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    invoke-static {p1, v0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2010
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2011
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method static synthetic lambda$execute$0(Lorg/apache/tools/ant/util/CompositeMapper;Ljava/nio/file/Path;)V
    .locals 1

    .line 1904
    new-instance v0, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/util/MergingMapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/CompositeMapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method


# virtual methods
.method public createCompress()Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;
    .locals 3

    .line 835
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    return-object v0

    .line 836
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one nested compression element is permitted."

    .line 838
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createExcludeFiles()Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
    .locals 2

    .line 507
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 508
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createExcludeResources()Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
    .locals 2

    .line 535
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 536
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createLauncher()Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;
    .locals 2

    .line 452
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 453
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createLocale()Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;
    .locals 2

    .line 479
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 480
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createModule()Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;
    .locals 2

    .line 404
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 405
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createModulePath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 348
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createObservableModule()Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;
    .locals 2

    .line 427
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 428
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createReleaseInfo()Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;
    .locals 2

    .line 930
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 931
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->releaseInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createResourceOrder()Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
    .locals 2

    .line 564
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 565
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Skipping image creation, since \""

    .line 1876
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    if-eqz v1, :cond_c

    .line 1881
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1885
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1890
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    .line 1891
    new-instance v6, Lorg/apache/tools/ant/util/CompositeMapper;

    invoke-direct {v6}, Lorg/apache/tools/ant/util/CompositeMapper;-><init>()V

    .line 1892
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    .line 1893
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v4, v2, [Ljava/nio/file/FileVisitOption;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1903
    :try_start_1
    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda0;

    invoke-direct {v4, v6}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/util/CompositeMapper;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1906
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 1908
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    .line 1909
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v8

    move-object v4, p0

    .line 1907
    invoke-static/range {v4 .. v9}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v4

    .line 1910
    invoke-interface {v4}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" is already newer than all constituent modules."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1916
    :try_start_2
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V

    :cond_0
    return-void

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1892
    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 1917
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not scan \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for being up-to-date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1919
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1923
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1924
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1925
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1926
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1927
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1928
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1929
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1931
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->buildJlinkArgs()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "jlink"

    .line 1933
    invoke-static {v1}, Ljava/util/spi/ToolProvider;->findFirst(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/spi/ToolProvider;

    .line 1937
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1938
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting existing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    .line 1939
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/modules/Link;->deleteTree(Ljava/nio/file/Path;)V

    .line 1942
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Executing: jlink "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-static {v5, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    .line 1944
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1945
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1948
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1949
    :try_start_5
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-array v2, v2, [Ljava/lang/String;

    .line 1951
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v5, v6, v0}, Ljava/util/spi/ToolProvider;->run(Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1952
    :try_start_7
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V

    if-eqz v0, :cond_7

    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jlink failed (exit code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, ", output is: "

    .line 1958
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1960
    :cond_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, ", error output is: "

    .line 1961
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1964
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1967
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

    if-eqz v0, :cond_9

    .line 1968
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/LogLevel;->getLevel()I

    move-result v0

    .line 1970
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1971
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    .line 1973
    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1974
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    .line 1978
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    return-void

    :catchall_2
    move-exception v0

    .line 1948
    :try_start_8
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_9
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    .line 1886
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one module must be specified."

    .line 1887
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1882
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Module path is required."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1877
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destination directory is required."

    .line 1878
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public getBindServices()Z
    .locals 1

    .line 600
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->bindServices:Z

    return v0
.end method

.method public getCheckDuplicateLegal()Z
    .locals 1

    .line 882
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->checkDuplicateLegal:Z

    return v0
.end method

.method public getCompress()Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;
    .locals 1

    .line 806
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    .line 730
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->debug:Z

    return v0
.end method

.method public getDestDir()Ljava/io/File;
    .locals 1

    .line 781
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    return-object v0
.end method

.method public getEndianness()Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;
    .locals 1

    .line 854
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

    return-object v0
.end method

.method public getIgnoreSigning()Z
    .locals 1

    .line 625
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ignoreSigning:Z

    return v0
.end method

.method public getIncludeHeaders()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeHeaders:Z

    return v0
.end method

.method public getIncludeManPages()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeManPages:Z

    return v0
.end method

.method public getIncludeNativeCommands()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeNativeCommands:Z

    return v0
.end method

.method public getModulePath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getVerboseLevel()Lorg/apache/tools/ant/types/LogLevel;
    .locals 1

    .line 756
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

    return-object v0
.end method

.method public getVmType()Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;
    .locals 1

    .line 908
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;

    return-object v0
.end method

.method synthetic lambda$execute$1$org-apache-tools-ant-taskdefs-modules-Link()Lorg/apache/tools/ant/BuildException;
    .locals 3

    .line 1934
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "jlink tool not found in JDK."

    .line 1935
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    return-object v0
.end method

.method public setBindServices(Z)V
    .locals 0

    .line 612
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->bindServices:Z

    return-void
.end method

.method public setCheckDuplicateLegal(Z)V
    .locals 0

    .line 896
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->checkDuplicateLegal:Z

    return-void
.end method

.method public setCompress(Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 743
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->debug:Z

    return-void
.end method

.method public setDestDir(Ljava/io/File;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    return-void
.end method

.method public setEndianness(Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

    return-void
.end method

.method public setExcludeFiles(Ljava/lang/String;)V
    .locals 5

    const-string v0, ","

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 522
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v4, p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExcludeResources(Ljava/lang/String;)V
    .locals 5

    const-string v0, ","

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 551
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v4, p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIgnoreSigning(Z)V
    .locals 0

    .line 642
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ignoreSigning:Z

    return-void
.end method

.method public setIncludeHeaders(Z)V
    .locals 0

    .line 667
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeHeaders:Z

    return-void
.end method

.method public setIncludeManPages(Z)V
    .locals 0

    .line 692
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeManPages:Z

    return-void
.end method

.method public setIncludeNativeCommands(Z)V
    .locals 0

    .line 717
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeNativeCommands:Z

    return-void
.end method

.method public setLaunchers(Ljava/lang/String;)V
    .locals 5

    const-string v0, ","

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 467
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;

    invoke-direct {v4, p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLocales(Ljava/lang/String;)V
    .locals 5

    const-string v0, ","

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 494
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;

    invoke-direct {v4, p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setModulePath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 378
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setModulePathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 393
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->createModulePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setModules(Ljava/lang/String;)V
    .locals 5

    const-string v0, ","

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 416
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;

    invoke-direct {v4, p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setObservableModules(Ljava/lang/String;)V
    .locals 5

    const-string v0, ","

    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 439
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;

    invoke-direct {v4, p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setResourceOrder(Ljava/lang/String;)V
    .locals 6

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    .line 583
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 584
    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v5, p0, v4}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 588
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public setVerboseLevel(Lorg/apache/tools/ant/types/LogLevel;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

    return-void
.end method

.method public setVmType(Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;

    return-void
.end method
