.class public Lorg/apache/tools/ant/taskdefs/SQLExec;
.super Lorg/apache/tools/ant/taskdefs/JDBCTask;
.source "SQLExec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/SQLExec$DelimiterType;,
        Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;,
        Lorg/apache/tools/ant/taskdefs/SQLExec$OnError;
    }
.end annotation


# instance fields
.field private append:Z

.field private conn:Ljava/sql/Connection;

.field private csvColumnSep:Ljava/lang/String;

.field private csvQuoteChar:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private delimiterType:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private errorProperty:Ljava/lang/String;

.field private escapeProcessing:Z

.field private expandProperties:Z

.field private forceCsvQuoteChar:Z

.field private goodSql:I

.field private keepformat:Z

.field private onError:Ljava/lang/String;

.field private output:Lorg/apache/tools/ant/types/Resource;

.field private outputEncoding:Ljava/lang/String;

.field private print:Z

.field private rawBlobs:Z

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private rowCountProperty:Ljava/lang/String;

.field private showWarnings:Z

.field private showheaders:Z

.field private showtrailers:Z

.field private sqlCommand:Ljava/lang/String;

.field private srcFile:Ljava/io/File;

.field private statement:Ljava/sql/Statement;

.field private strictDelimiterMatching:Z

.field private totalSql:I

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private treatWarningsAsErrors:Z

.field private warningProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->goodSql:I

    .line 100
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->totalSql:I

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    .line 115
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->statement:Ljava/sql/Statement;

    .line 120
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    const-string v2, ""

    .line 125
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 130
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    const-string v2, ";"

    .line 135
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    const-string v2, "normal"

    .line 141
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    .line 146
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->print:Z

    const/4 v2, 0x1

    .line 151
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showheaders:Z

    .line 156
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showtrailers:Z

    .line 161
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    .line 166
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->outputEncoding:Ljava/lang/String;

    const-string v3, "abort"

    .line 171
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->encoding:Ljava/lang/String;

    .line 181
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    .line 186
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    .line 193
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->escapeProcessing:Z

    .line 201
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->expandProperties:Z

    .line 213
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->strictDelimiterMatching:Z

    .line 219
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showWarnings:Z

    const-string v2, ","

    .line 228
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    .line 248
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    .line 254
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->treatWarningsAsErrors:Z

    .line 260
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->errorProperty:Ljava/lang/String;

    .line 266
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->warningProperty:Ljava/lang/String;

    .line 273
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rowCountProperty:Ljava/lang/String;

    .line 278
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->forceCsvQuoteChar:Z

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/SQLExec;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method private closeQuietly()V
    .locals 2

    .line 930
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->isAutocommit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "abort"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private maybeQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 909
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->forceCsvQuoteChar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    .line 910
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 913
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 915
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v4, p1, v2

    if-ne v4, v1, :cond_1

    .line 917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    :cond_2
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method private printValue(Ljava/sql/ResultSet;ILjava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 898
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rawBlobs:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    .line 899
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 901
    new-instance v0, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->run()V

    goto :goto_0

    .line 904
    :cond_0
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->maybeQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private printWarnings(Ljava/sql/SQLWarning;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1110
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showWarnings:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_2

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sql warning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1113
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showWarnings:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 1112
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 1114
    invoke-virtual {p2}, Ljava/sql/SQLWarning;->getNextWarning()Ljava/sql/SQLWarning;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 1118
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setWarningProperty()V

    .line 1120
    :cond_3
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->treatWarningsAsErrors:Z

    if-eqz p2, :cond_5

    if-nez p1, :cond_4

    goto :goto_2

    .line 1121
    :cond_4
    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1139
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 344
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void

    :catchall_0
    move-exception p1

    .line 344
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 338
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot add null ResourceCollection"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    return-void
.end method

.method public createTransaction()Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;
    .locals 2

    .line 353
    new-instance v0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;-><init>(Lorg/apache/tools/ant/taskdefs/SQLExec;)V

    .line 354
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected execSQL(Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, " rows affected"

    const-string v1, "SQL: "

    .line 787
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 793
    :try_start_0
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->totalSql:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->totalSql:I

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 799
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v1

    .line 800
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v6

    invoke-interface {v6}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v6

    move v7, v2

    :cond_1
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    add-int/2addr v7, v6

    :cond_2
    if-eqz v1, :cond_3

    .line 806
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v3

    .line 807
    invoke-interface {v3}, Ljava/sql/ResultSet;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printWarnings(Ljava/sql/SQLWarning;Z)V

    .line 808
    invoke-interface {v3}, Ljava/sql/ResultSet;->clearWarnings()V

    .line 809
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->print:Z

    if-eqz v1, :cond_3

    .line 810
    invoke-virtual {p0, v3, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printResults(Ljava/sql/ResultSet;Ljava/io/PrintStream;)V

    .line 813
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/Statement;->getMoreResults()Z

    move-result v1

    .line 814
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v6

    invoke-interface {v6}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v6

    if-nez v1, :cond_1

    if-ne v6, v8, :cond_1

    .line 817
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/Statement;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printWarnings(Ljava/sql/SQLWarning;Z)V

    .line 818
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/Statement;->clearWarnings()V

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    if-eq v7, v8, :cond_4

    .line 822
    invoke-virtual {p0, v7}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setRowCountProperty(I)V

    .line 825
    :cond_4
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->print:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showtrailers:Z

    if-eqz v1, :cond_5

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object p2

    invoke-interface {p2}, Ljava/sql/Connection;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object p2

    .line 829
    invoke-direct {p0, p2, v5}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printWarnings(Ljava/sql/SQLWarning;Z)V

    .line 830
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object p2

    invoke-interface {p2}, Ljava/sql/Connection;->clearWarnings()V

    .line 831
    iget p2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->goodSql:I

    add-int/2addr p2, v5

    iput p2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->goodSql:I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 833
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to execute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 834
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setErrorProperty()V

    const-string p1, "abort"

    .line 835
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 836
    invoke-virtual {p2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    :cond_6
    const-string p1, "continue"

    .line 838
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_7

    .line 842
    :goto_0
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    return-void

    .line 839
    :cond_7
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 842
    :goto_1
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 843
    throw p1
.end method

.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Source file "

    .line 616
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 617
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 619
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 622
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v3, :cond_1

    .line 623
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Source file or resource collection, transactions or sql statement must be set!"

    .line 626
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 630
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 631
    :cond_2
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is not a file!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v3

    .line 635
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/Resource;

    .line 639
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->createTransaction()Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;

    move-result-object v4

    .line 640
    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_2

    .line 645
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->createTransaction()Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;

    move-result-object v0

    .line 646
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->setSrc(Ljava/io/File;)V

    .line 647
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->addText(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_5

    .line 717
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    .line 718
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    return-void

    .line 655
    :cond_5
    :try_start_1
    invoke-static {}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;->wrapSystemOut()Ljava/io/PrintStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 657
    :try_start_2
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    const/4 v4, 0x3

    if-eqz v3, :cond_a

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening PrintStream to output Resource "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 660
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    const-class v5, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 661
    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v3, :cond_6

    .line 663
    invoke-interface {v3}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    invoke-static {v3, v5}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v3

    goto :goto_4

    .line 665
    :cond_6
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    if-eqz v3, :cond_7

    .line 666
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    const-class v5, Lorg/apache/tools/ant/types/resources/Appendable;

    .line 667
    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/resources/Appendable;

    if-eqz v3, :cond_7

    .line 669
    invoke-interface {v3}, Lorg/apache/tools/ant/types/resources/Appendable;->getAppendOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_8

    .line 673
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 674
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    if-eqz v5, :cond_8

    .line 675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring append=true for non-appendable resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 681
    :cond_8
    :goto_4
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->outputEncoding:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 682
    new-instance v5, Ljava/io/PrintStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->outputEncoding:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    goto :goto_5

    .line 685
    :cond_9
    new-instance v5, Ljava/io/PrintStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :goto_5
    move-object v0, v5

    .line 690
    :cond_a
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;

    .line 691
    invoke-static {v5, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->access$000(Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;Ljava/io/PrintStream;)V

    .line 692
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->isAutocommit()Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "Committing transaction"

    .line 693
    invoke-virtual {p0, v5, v4}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 694
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v5

    invoke-interface {v5}, Ljava/sql/Connection;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 698
    :cond_c
    :try_start_3
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 708
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 712
    :catch_0
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_0
    move-exception v3

    .line 698
    :try_start_6
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 699
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    .line 701
    :goto_8
    :try_start_7
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->closeQuietly()V

    .line 702
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setErrorProperty()V

    const-string v3, "abort"

    .line 703
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v3, :cond_d

    .line 708
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 712
    :catch_3
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    goto :goto_7

    .line 715
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->goodSql:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->totalSql:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SQL statements executed successfully"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 717
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    .line 718
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    return-void

    .line 704
    :cond_d
    :try_start_a
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 708
    :goto_a
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 712
    :catch_4
    :try_start_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 713
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    .line 717
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->transactions:Ljava/util/List;

    .line 718
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->sqlCommand:Ljava/lang/String;

    .line 719
    throw v0
.end method

.method protected getConnection()Ljava/sql/Connection;
    .locals 1

    .line 952
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    if-nez v0, :cond_0

    .line 953
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/JDBCTask;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    .line 954
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->isValidRdbms(Ljava/sql/Connection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 955
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    .line 958
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->conn:Ljava/sql/Connection;

    return-object v0
.end method

.method public getExpandProperties()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->expandProperties:Z

    return v0
.end method

.method protected getStatement()Ljava/sql/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->statement:Ljava/sql/Statement;

    if-nez v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->statement:Ljava/sql/Statement;

    .line 976
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->escapeProcessing:Z

    invoke-interface {v0, v1}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 978
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->statement:Ljava/sql/Statement;

    return-object v0
.end method

.method public lastDelimiterPosition(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .locals 5

    .line 1071
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->strictDelimiterMatching:Z

    const-string v1, "normal"

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 1072
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    .line 1073
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/StringUtils;->endsWith(Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    const-string v1, "row"

    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    .line 1075
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1076
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :cond_2
    return v2

    .line 1081
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1085
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 1086
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 1087
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    if-ge v1, p2, :cond_5

    return v2

    :cond_5
    :goto_1
    if-ltz p2, :cond_7

    add-int/lit8 v3, v1, 0x1

    .line 1094
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1095
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    return v1

    .line 1103
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1104
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int v2, p1, p2

    :cond_9
    return v2
.end method

.method protected printResults(Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    .line 857
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printResults(Ljava/sql/ResultSet;Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 858
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 856
    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method protected printResults(Ljava/sql/ResultSet;Ljava/io/PrintStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "Processing new result set."

    const/4 v1, 0x3

    .line 870
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 871
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 872
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 874
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showheaders:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 875
    invoke-interface {v0, v4}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->maybeQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v2, v3

    :goto_0
    if-gt v2, v1, :cond_0

    .line 877
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 878
    invoke-interface {v0, v2}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/SQLExec;->maybeQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 882
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    invoke-direct {p0, p1, v4, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printValue(Ljava/sql/ResultSet;ILjava/io/PrintStream;)V

    move v0, v3

    :goto_2
    if-gt v0, v1, :cond_2

    .line 885
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printValue(Ljava/sql/ResultSet;ILjava/io/PrintStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 888
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 889
    invoke-interface {p1}, Ljava/sql/ResultSet;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->printWarnings(Ljava/sql/SQLWarning;Z)V

    goto :goto_1

    .line 893
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method protected runStatements(Ljava/io/Reader;Ljava/io/PrintStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 733
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 736
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 737
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    if-nez v2, :cond_1

    .line 738
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 740
    :cond_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->expandProperties:Z

    if-eqz v2, :cond_2

    .line 741
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 743
    :cond_2
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    const-string v3, "--"

    if-nez v2, :cond_5

    const-string v2, "//"

    .line 744
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 747
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 750
    :cond_4
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 752
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "REM"

    .line 753
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 759
    :cond_5
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    const-string v4, "\n"

    if-eqz v2, :cond_6

    move-object v2, v4

    goto :goto_1

    :cond_6
    const-string v2, " "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    if-nez v2, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 765
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    :cond_7
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->lastDelimiterPosition(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    const/4 v2, 0x0

    .line 769
    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->execSQL(Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 770
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const-string v3, ""

    invoke-virtual {v0, v2, p1, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 774
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/SQLExec;->execSQL(Ljava/lang/String;Ljava/io/PrintStream;)V

    :cond_9
    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    .line 458
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->append:Z

    return-void
.end method

.method public setCsvColumnSeparator(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvColumnSep:Ljava/lang/String;

    return-void
.end method

.method public setCsvQuoteCharacter(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 563
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The quote character must be a single character."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 567
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->csvQuoteChar:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setDelimiterType(Lorg/apache/tools/ant/taskdefs/SQLExec$DelimiterType;)V
    .locals 0

    .line 389
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/SQLExec$DelimiterType;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->delimiterType:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->encoding:Ljava/lang/String;

    return-void
.end method

.method protected final setErrorProperty()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->errorProperty:Ljava/lang/String;

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->errorProperty:Ljava/lang/String;

    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->escapeProcessing:Z

    return-void
.end method

.method public setExpandProperties(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->expandProperties:Z

    return-void
.end method

.method public setForceCsvQuoteChar(Z)V
    .locals 0

    .line 607
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->forceCsvQuoteChar:Z

    return-void
.end method

.method public setKeepformat(Z)V
    .locals 0

    .line 478
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->keepformat:Z

    return-void
.end method

.method public setOnerror(Lorg/apache/tools/ant/taskdefs/SQLExec$OnError;)V
    .locals 0

    .line 468
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/SQLExec$OnError;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->onError:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 2

    .line 426
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setOutput(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method

.method public setOutput(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->output:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->outputEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPrint(Z)V
    .locals 0

    .line 398
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->print:Z

    return-void
.end method

.method public setRawBlobs(Z)V
    .locals 0

    .line 496
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rawBlobs:Z

    return-void
.end method

.method protected final setRowCountProperty(I)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rowCountProperty:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRowCountProperty(Ljava/lang/String;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->rowCountProperty:Ljava/lang/String;

    return-void
.end method

.method public setShowWarnings(Z)V
    .locals 0

    .line 518
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showWarnings:Z

    return-void
.end method

.method public setShowheaders(Z)V
    .locals 0

    .line 407
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showheaders:Z

    return-void
.end method

.method public setShowtrailers(Z)V
    .locals 0

    .line 417
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->showtrailers:Z

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->srcFile:Ljava/io/File;

    return-void
.end method

.method public setStrictDelimiterMatching(Z)V
    .locals 0

    .line 508
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->strictDelimiterMatching:Z

    return-void
.end method

.method public setTreatWarningsAsErrors(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->treatWarningsAsErrors:Z

    return-void
.end method

.method protected final setWarningProperty()V
    .locals 2

    .line 1130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->warningProperty:Ljava/lang/String;

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWarningProperty(Ljava/lang/String;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec;->warningProperty:Ljava/lang/String;

    return-void
.end method
