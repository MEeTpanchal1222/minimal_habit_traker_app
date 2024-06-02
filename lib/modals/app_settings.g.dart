// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppsettingCollection on Isar {
  IsarCollection<Appsetting> get appsettings => this.collection();
}

const AppsettingSchema = CollectionSchema(
  name: r'Appsetting',
  id: 4705853854633876997,
  properties: {
    r'firstLaunchDate': PropertySchema(
      id: 0,
      name: r'firstLaunchDate',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _appsettingEstimateSize,
  serialize: _appsettingSerialize,
  deserialize: _appsettingDeserialize,
  deserializeProp: _appsettingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appsettingGetId,
  getLinks: _appsettingGetLinks,
  attach: _appsettingAttach,
  version: '3.1.0+1',
);

int _appsettingEstimateSize(
  Appsetting object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _appsettingSerialize(
  Appsetting object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.firstLaunchDate);
}

Appsetting _appsettingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Appsetting();
  object.firstLaunchDate = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  return object;
}

P _appsettingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appsettingGetId(Appsetting object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appsettingGetLinks(Appsetting object) {
  return [];
}

void _appsettingAttach(IsarCollection<dynamic> col, Id id, Appsetting object) {
  object.id = id;
}

extension AppsettingQueryWhereSort
    on QueryBuilder<Appsetting, Appsetting, QWhere> {
  QueryBuilder<Appsetting, Appsetting, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppsettingQueryWhere
    on QueryBuilder<Appsetting, Appsetting, QWhereClause> {
  QueryBuilder<Appsetting, Appsetting, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppsettingQueryFilter
    on QueryBuilder<Appsetting, Appsetting, QFilterCondition> {
  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition>
      firstLaunchDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstLaunchDate',
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition>
      firstLaunchDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstLaunchDate',
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition>
      firstLaunchDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstLaunchDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition>
      firstLaunchDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstLaunchDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition>
      firstLaunchDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstLaunchDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition>
      firstLaunchDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstLaunchDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppsettingQueryObject
    on QueryBuilder<Appsetting, Appsetting, QFilterCondition> {}

extension AppsettingQueryLinks
    on QueryBuilder<Appsetting, Appsetting, QFilterCondition> {}

extension AppsettingQuerySortBy
    on QueryBuilder<Appsetting, Appsetting, QSortBy> {
  QueryBuilder<Appsetting, Appsetting, QAfterSortBy> sortByFirstLaunchDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstLaunchDate', Sort.asc);
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterSortBy>
      sortByFirstLaunchDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstLaunchDate', Sort.desc);
    });
  }
}

extension AppsettingQuerySortThenBy
    on QueryBuilder<Appsetting, Appsetting, QSortThenBy> {
  QueryBuilder<Appsetting, Appsetting, QAfterSortBy> thenByFirstLaunchDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstLaunchDate', Sort.asc);
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterSortBy>
      thenByFirstLaunchDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstLaunchDate', Sort.desc);
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Appsetting, Appsetting, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension AppsettingQueryWhereDistinct
    on QueryBuilder<Appsetting, Appsetting, QDistinct> {
  QueryBuilder<Appsetting, Appsetting, QDistinct> distinctByFirstLaunchDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstLaunchDate');
    });
  }
}

extension AppsettingQueryProperty
    on QueryBuilder<Appsetting, Appsetting, QQueryProperty> {
  QueryBuilder<Appsetting, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Appsetting, DateTime?, QQueryOperations>
      firstLaunchDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstLaunchDate');
    });
  }
}
