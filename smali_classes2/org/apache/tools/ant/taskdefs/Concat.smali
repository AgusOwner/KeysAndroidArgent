.class public Lorg/apache/tools/ant/taskdefs/Concat;
.super Lorg/apache/tools/ant/Task;
.source "Concat.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;,
        Lorg/apache/tools/ant/taskdefs/Concat$TextElement;,
        Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;,
        Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;,
        Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private append:Z

.field private binary:Z

.field private dest:Lorg/apache/tools/ant/types/Resource;

.field private encoding:Ljava/lang/String;

.field private eolString:Ljava/lang/String;

.field private filterBeforeConcat:Z

.field private filterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private fixLastLine:Z

.field private footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

.field private force:Z

.field private forceOverwrite:Z

.field private header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

.field private identityReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreEmpty:Z

.field private outputEncoding:Ljava/lang/String;

.field private outputWriter:Ljava/io/Writer;

.field private rc:Lorg/apache/tools/ant/types/resources/Resources;

.field private resourceName:Ljava/lang/String;

.field private resourceReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private textBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Concat;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 85
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Exists;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/selectors/Exists;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Concat;->EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 86
    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Not;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/resources/selectors/Not;-><init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/Concat;->NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 590
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 556
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->forceOverwrite:Z

    const/4 v1, 0x0

    .line 558
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->force:Z

    .line 564
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    const/4 v1, 0x0

    .line 568
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputWriter:Ljava/io/Writer;

    .line 571
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->ignoreEmpty:Z

    .line 575
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Concat$1;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->resourceReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    .line 585
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->identityReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    .line 591
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->reset()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->identityReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->resourceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat;->getFilteredReader(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/Concat;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    return p0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/StringBuffer;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/taskdefs/Concat;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    return p0
.end method

.method static synthetic access$600(Lorg/apache/tools/ant/taskdefs/Concat;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterBeforeConcat:Z

    return p0
.end method

.method static synthetic access$700(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->resourceReaderFactory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    return-object p0
.end method

.method static synthetic access$900(Lorg/apache/tools/ant/taskdefs/Concat;)Lorg/apache/tools/ant/taskdefs/Concat$TextElement;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    return-object p0
.end method

.method private getFilteredReader(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2

    .line 1033
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    if-nez v0, :cond_0

    return-object p1

    .line 1036
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    const/16 v1, 0x2000

    .line 1037
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    .line 1038
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 1039
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 1040
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1042
    invoke-virtual {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object p1

    return-object p1
.end method

.method private getResources()Lorg/apache/tools/ant/types/ResourceCollection;
    .locals 3

    .line 989
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_0

    .line 990
    new-instance v0, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/resources/StringResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-object v0

    .line 992
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_2

    .line 993
    new-instance v0, Lorg/apache/tools/ant/types/resources/Intersect;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Intersect;-><init>()V

    .line 994
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Intersect;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 995
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Intersect;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 996
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Intersect;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 997
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Intersect;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 998
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Destination resource %s was specified as an input resource."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1003
    :cond_2
    :goto_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 1004
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Concat;->NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 1005
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 1006
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Concat;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 1009
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 1010
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Concat;->EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 1011
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-object v0
.end method

.method private isUpToDate(Lorg/apache/tools/ant/types/ResourceCollection;)Z
    .locals 1

    .line 1016
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->forceOverwrite:Z

    if-nez v0, :cond_0

    .line 1017
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Concat$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$new$0(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method private sanitizeText()V
    .locals 1

    .line 1027
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1028
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private validate()V
    .locals 2

    .line 942
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->sanitizeText()V

    .line 945
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    if-eqz v0, :cond_5

    .line 946
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 950
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->encoding:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 954
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    if-nez v0, :cond_2

    .line 958
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    if-nez v0, :cond_1

    .line 962
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    if-nez v0, :cond_0

    goto :goto_0

    .line 963
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nested header or footer is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Setting fixlastline is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Setting filters is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Setting input or output encoding is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nested text is incompatible with binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputWriter:Ljava/io/Writer;

    if-nez v0, :cond_6

    goto :goto_1

    .line 968
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot specify both a destination resource and an output writer"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_9

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_8

    goto :goto_2

    .line 974
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one resource must be provided, or some text."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    if-eqz v0, :cond_b

    .line 977
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_a

    goto :goto_3

    .line 980
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot include inline text when using resources."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    .line 758
    monitor-enter p0

    .line 759
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    .line 761
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 762
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 764
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void

    :catchall_0
    move-exception p1

    .line 764
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .locals 0

    .line 749
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 741
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFilterChain(Lorg/apache/tools/ant/types/FilterChain;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    .line 777
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addFooter(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    return-void
.end method

.method public addHeader(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 2

    .line 785
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    .line 793
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public createPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 731
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 732
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Concat;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-object v0
.end method

.method public execute()V
    .locals 13

    .line 881
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->validate()V

    .line 882
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dest|destfile attribute is required for binary concatenation"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getResources()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    .line 887
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Concat;->isUpToDate(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is up-to-date."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Concat;->log(Ljava/lang/String;I)V

    return-void

    .line 891
    :cond_2
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->ignoreEmpty:Z

    if-eqz v1, :cond_3

    return-void

    .line 896
    :cond_3
    :try_start_0
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/Concat$1;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_4

    .line 897
    new-instance v0, Lorg/apache/tools/ant/types/resources/LogOutputResource;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/LogOutputResource;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    :cond_4
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 898
    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Concat;->append:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 900
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v11

    iget-boolean v12, p0, Lorg/apache/tools/ant/taskdefs/Concat;->force:Z

    .line 896
    invoke-static/range {v2 .. v12}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 902
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error concatenating content to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isFilesystemOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 912
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->validate()V

    .line 913
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;

    .line 914
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat;->getResources()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Concat$ConcatResource;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/Concat$1;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 915
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$isUpToDate$1$org-apache-tools-ant-taskdefs-Concat(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 3

    .line 1017
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Concat;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->append:Z

    const/4 v1, 0x1

    .line 599
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->forceOverwrite:Z

    const/4 v2, 0x0

    .line 600
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    .line 601
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->encoding:Ljava/lang/String;

    .line 602
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    .line 603
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    .line 604
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterChains:Ljava/util/Vector;

    .line 605
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->footer:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    .line 606
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->header:Lorg/apache/tools/ant/taskdefs/Concat$TextElement;

    .line 607
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    .line 608
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputWriter:Ljava/io/Writer;

    .line 609
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->textBuffer:Ljava/lang/StringBuffer;

    .line 610
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    .line 611
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat;->rc:Lorg/apache/tools/ant/types/resources/Resources;

    .line 612
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->ignoreEmpty:Z

    .line 613
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->force:Z

    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    .line 643
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->append:Z

    return-void
.end method

.method public setBinary(Z)V
    .locals 0

    .line 862
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->binary:Z

    return-void
.end method

.method public setDest(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->dest:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .locals 1

    .line 623
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Concat;->setDest(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 652
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->encoding:Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 654
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setEol(Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;)V
    .locals 1

    .line 834
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cr"

    .line 835
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "lf"

    .line 837
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "unix"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "crlf"

    .line 839
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    const-string p1, "\r\n"

    .line 840
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "\n"

    .line 838
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "\r"

    .line 836
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->eolString:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method

.method public setFilterBeforeConcat(Z)V
    .locals 0

    .line 873
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->filterBeforeConcat:Z

    return-void
.end method

.method public setFixLastLine(Z)V
    .locals 0

    .line 822
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->fixLastLine:Z

    return-void
.end method

.method public setForce(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->forceOverwrite:Z

    return-void
.end method

.method public setForceReadOnly(Z)V
    .locals 0

    .line 700
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->force:Z

    return-void
.end method

.method public setIgnoreEmpty(Z)V
    .locals 0

    .line 711
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->ignoreEmpty:Z

    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputEncoding:Ljava/lang/String;

    return-void
.end method

.method public setOverwrite(Z)V
    .locals 0

    .line 688
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat;->setForce(Z)V

    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->resourceName:Ljava/lang/String;

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat;->outputWriter:Ljava/io/Writer;

    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
